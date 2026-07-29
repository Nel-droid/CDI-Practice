import { describe, test, expect } from 'vitest'
import { evaluatePassword, firstPasswordProblem, MIN_PASSWORD_LENGTH } from '../passwordPolicy'

const idOf = checks => Object.fromEntries(checks.map(c => [c.id, c.passed]))

describe('evaluatePassword', () => {
  test('accepts a password meeting every rule', () => {
    const { valid, checks } = evaluatePassword('Str0ng#pass', { email: 'jane@x.com', name: 'Jane' })
    expect(valid).toBe(true)
    expect(idOf(checks)).toEqual({ length: true, upper: true, number: true, symbol: true, distinct: true })
  })

  test('rejects a password shorter than the minimum', () => {
    const { checks } = evaluatePassword('Ab1#')
    expect(idOf(checks).length).toBe(false)
    expect(MIN_PASSWORD_LENGTH).toBe(8)
  })

  test('requires an uppercase letter', () => {
    expect(idOf(evaluatePassword('str0ng#pass').checks).upper).toBe(false)
  })

  test('requires a number', () => {
    expect(idOf(evaluatePassword('Strong#pass').checks).number).toBe(false)
  })

  test('requires a symbol', () => {
    expect(idOf(evaluatePassword('Str0ngpass').checks).symbol).toBe(false)
  })

  test('flags a password that contains the email local part', () => {
    const { checks } = evaluatePassword('Jsmith#2024', { email: 'jsmith@example.com' })
    expect(idOf(checks).distinct).toBe(false)
  })

  test('flags a password that matches the display name', () => {
    const { checks } = evaluatePassword('Eldor#12345', { name: 'Eldor' })
    expect(idOf(checks).distinct).toBe(false)
  })

  test('ignores identity fragments shorter than three characters', () => {
    // a two-letter name shouldn't block an otherwise strong password
    const { checks } = evaluatePassword('Ab#123456789', { name: 'Al' })
    expect(idOf(checks).distinct).toBe(true)
  })

  test('flags a password built from a delimited word in the email', () => {
    // "smith" is a distinct word in "john.smith@..." (split on the dot)
    const { checks } = evaluatePassword('Smith#2024', { email: 'john.smith@example.com' })
    expect(idOf(checks).distinct).toBe(false)
  })

  test('accepts a strong password unrelated to the email or nickname', () => {
    // Mirrors the app screenshot: nickname "Nel", real strong password
    const { valid } = evaluatePassword('Eldor.2005', {
      email: 'eldornabijonov.2005@gmail.com',
      name: 'Nel',
    })
    expect(valid).toBe(true)
  })

  test('flags a password containing the nickname', () => {
    // Mirrors the app screenshot: nickname "Nel", password "Nel.2005"
    const { valid, checks } = evaluatePassword('Nel.2005', {
      email: 'eldornabijonov.2005@gmail.com',
      name: 'Nel',
    })
    expect(idOf(checks).distinct).toBe(false)
    expect(valid).toBe(false)
  })

  test('empty password fails every check', () => {
    const { valid, checks } = evaluatePassword('')
    expect(valid).toBe(false)
    expect(checks.every(c => !c.passed)).toBe(true)
  })
})

describe('firstPasswordProblem', () => {
  test('returns null for a compliant password', () => {
    expect(firstPasswordProblem('Str0ng#pass', { email: 'a@b.com', name: 'Zoe' })).toBeNull()
  })

  test('reports the length problem first', () => {
    expect(firstPasswordProblem('A1#')).toMatch(/8 characters/i)
  })

  test('gives a dedicated message for the similarity rule', () => {
    const msg = firstPasswordProblem('Jsmith#2024', { email: 'jsmith@example.com' })
    expect(msg).toMatch(/not be similar to your username or email/i)
  })
})
