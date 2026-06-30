import { Routes, Route } from 'react-router-dom'
import { AuthProvider } from './context/AuthContext'
import ProtectedRoute from './components/ProtectedRoute'
import AppShell from './components/AppShell'
import Landing from './pages/Landing'
import Login from './pages/Login'
import Dashboard from './pages/Dashboard'
import Writing from './pages/Writing'
import ReadingHome from './pages/reading/ReadingHome'
import ReadingExam from './pages/reading/ReadingExam'
import ReadingResults from './pages/reading/ReadingResults'
import ListeningHome from './pages/listening/ListeningHome'
import ListeningExam from './pages/listening/ListeningExam'
import ListeningResults from './pages/listening/ListeningResults'

export default function App() {
  return (
    <AuthProvider>
      <Routes>
        {/* Public standalone pages */}
        <Route path="/" element={<Landing />} />
        <Route path="/login" element={<Login />} />

        {/* Full-screen exam pages — own header, no AppShell */}
        <Route
          path="/reading/exam/:testId"
          element={<ProtectedRoute><ReadingExam /></ProtectedRoute>}
        />
        <Route
          path="/listening/exam/:testId"
          element={<ProtectedRoute><ListeningExam /></ProtectedRoute>}
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
            element={<ProtectedRoute><ListeningHome /></ProtectedRoute>}
          />
          <Route
            path="/listening/results/:attemptId"
            element={<ProtectedRoute><ListeningResults /></ProtectedRoute>}
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
