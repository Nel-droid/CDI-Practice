import { Routes, Route } from 'react-router-dom'
import { AuthProvider } from './context/AuthContext'
import ProtectedRoute from './components/ProtectedRoute'
import AppShell from './components/AppShell'
import Landing from './pages/Landing'
import Login from './pages/Login'
import Dashboard from './pages/Dashboard'
import Reading from './pages/Reading'
import Listening from './pages/Listening'
import Writing from './pages/Writing'

export default function App() {
  return (
    <AuthProvider>
      <Routes>
        {/* Public standalone pages */}
        <Route path="/" element={<Landing />} />
        <Route path="/login" element={<Login />} />

        {/* Protected area — requires login */}
        <Route element={<AppShell />}>
          <Route
            path="/dashboard"
            element={<ProtectedRoute><Dashboard /></ProtectedRoute>}
          />
          <Route
            path="/reading"
            element={<ProtectedRoute><Reading /></ProtectedRoute>}
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
