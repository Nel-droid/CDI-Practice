import { Routes, Route } from 'react-router-dom'
import AppShell from './components/AppShell.jsx'
import Landing from './pages/Landing.jsx'
import Login from './pages/Login.jsx'
import Dashboard from './pages/Dashboard.jsx'
import Reading from './pages/Reading.jsx'
import Listening from './pages/Listening.jsx'
import Writing from './pages/Writing.jsx'

export default function App() {
  return (
    <Routes>
      {/* Public standalone pages (no app header) */}
      <Route path="/" element={<Landing />} />
      <Route path="/login" element={<Login />} />

      {/* Authenticated area — wrapped in the app shell with nav header */}
      <Route element={<AppShell />}>
        <Route path="/dashboard" element={<Dashboard />} />
        <Route path="/reading" element={<Reading />} />
        <Route path="/listening" element={<Listening />} />
        <Route path="/writing" element={<Writing />} />
      </Route>
    </Routes>
  )
}
