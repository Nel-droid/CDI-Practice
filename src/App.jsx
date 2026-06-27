import { Routes, Route } from 'react-router-dom'
import { AuthProvider } from './context/AuthContext'
import ProtectedRoute from './components/ProtectedRoute'
import AppShell from './components/AppShell'
import Landing from './pages/Landing'
import Login from './pages/Login'
import Dashboard from './pages/Dashboard'
import Listening from './pages/Listening'
import Writing from './pages/Writing'
import ReadingHome from './pages/reading/ReadingHome'
import ReadingExam from './pages/reading/ReadingExam'
import ReadingResults from './pages/reading/ReadingResults'

export default function App() {
  return (
    <AuthProvider>
      <Routes>
        {/* Public standalone pages */}
        <Route path="/" element={<Landing />} />
        <Route path="/login" element={<Login />} />

        {/* Reading exam — full-screen, own header, no AppShell */}
        <Route
          path="/reading/exam/:testId"
          element={<ProtectedRoute><ReadingExam /></ProtectedRoute>}
        />

        {/* Protected area — AppShell with nav */}
        <Route element={<AppShell />}>
          <Route
            path="/dashboard"
            element={<ProtectedRoute><Dashboard /></ProtectedRoute>}
          />
          <Route
            path="/reading"
            element={<ProtectedRoute><ReadingHome /></ProtectedRoute>}
          />
          <Route
            path="/reading/results/:attemptId"
            element={<ProtectedRoute><ReadingResults /></ProtectedRoute>}
          />
          <Route
            path="/listening"
            element={<ProtectedRoute><Listening /></ProtectedRoute>}
          />
          <Route
            path="/writing"
            element={<ProtectedRoute><Writing /></ProtectedRoute>}
          />
        </Route>
      </Routes>
    </AuthProvider>
  )
}
