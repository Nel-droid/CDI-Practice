import { Routes, Route } from 'react-router-dom'
import { AuthProvider } from './context/AuthContext'
import { ThemeProvider } from './context/ThemeContext'
import ProtectedRoute from './components/ProtectedRoute'
import AppShell from './components/AppShell'
import Landing from './pages/Landing'
import Login from './pages/Login'
import ResetPassword from './pages/ResetPassword'
import Dashboard from './pages/Dashboard'
import Study from './pages/Study'
import Settings from './pages/Settings'
import Pricing from './pages/Pricing'
import WritingHome            from './pages/writing/WritingHome'
import WritingTask1Exam       from './pages/writing/WritingTask1Exam'
import WritingTask1Results    from './pages/writing/WritingTask1Results'
import WritingTask2Exam       from './pages/writing/WritingTask2Exam'
import WritingTask2Results    from './pages/writing/WritingTask2Results'
import WritingFullTestExam    from './pages/writing/WritingFullTestExam'
import WritingFullTestResults from './pages/writing/WritingFullTestResults'
import ReadingHome from './pages/reading/ReadingHome'
import ReadingExam from './pages/reading/ReadingExam'
import ReadingResults from './pages/reading/ReadingResults'
import ListeningHome from './pages/listening/ListeningHome'
import ListeningExam from './pages/listening/ListeningExam'
import ListeningResults from './pages/listening/ListeningResults'

export default function App() {
  return (
    <AuthProvider>
      <ThemeProvider>
      <Routes>
        {/* Public standalone pages */}
        <Route path="/" element={<Landing />} />
        <Route path="/login" element={<Login />} />
        <Route path="/reset-password" element={<ResetPassword />} />

        {/* Full-screen exam pages — own header, no AppShell */}
        <Route
          path="/reading/exam/:testId"
          element={<ProtectedRoute><ReadingExam /></ProtectedRoute>}
        />
        <Route
          path="/listening/exam/:testId"
          element={<ProtectedRoute><ListeningExam /></ProtectedRoute>}
        />
        <Route
          path="/writing/task1/exam/:promptId"
          element={<ProtectedRoute><WritingTask1Exam /></ProtectedRoute>}
        />
        <Route
          path="/writing/task2/exam/:promptId"
          element={<ProtectedRoute><WritingTask2Exam /></ProtectedRoute>}
        />
        <Route
          path="/writing/full-test/exam/:sessionId"
          element={<ProtectedRoute><WritingFullTestExam /></ProtectedRoute>}
        />

        {/* Protected area — AppShell with nav */}
        <Route element={<AppShell />}>
          <Route
            path="/dashboard"
            element={<ProtectedRoute><Dashboard /></ProtectedRoute>}
          />
          <Route
            path="/study"
            element={<ProtectedRoute><Study /></ProtectedRoute>}
          />
          <Route
            path="/settings"
            element={<ProtectedRoute><Settings /></ProtectedRoute>}
          />
          <Route
            path="/pricing"
            element={<ProtectedRoute><Pricing /></ProtectedRoute>}
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
            element={<ProtectedRoute><WritingHome /></ProtectedRoute>}
          />
          <Route
            path="/writing/task1/results/:attemptId"
            element={<ProtectedRoute><WritingTask1Results /></ProtectedRoute>}
          />
          <Route
            path="/writing/task2/results/:attemptId"
            element={<ProtectedRoute><WritingTask2Results /></ProtectedRoute>}
          />
          <Route
            path="/writing/full-test/results/:sessionId"
            element={<ProtectedRoute><WritingFullTestResults /></ProtectedRoute>}
          />
        </Route>
      </Routes>
      </ThemeProvider>
    </AuthProvider>
  )
}
