import { Navigate, useRoutes } from 'react-router-dom';
// layouts
import DashboardLayout from './layouts/dashboard';
import LogoOnlyLayout from './layouts/LogoOnlyLayout';
//
import Blog from './pages/Blog';
import User from './pages/User';
import Login from './pages/Login';
import NotFound from './pages/Page404';
import Register from './pages/Register';
import Products from './pages/Products';
import DashboardApp from './pages/DashboardApp';
import Sitter from './pages/Sitter';
import Booking from './pages/Booking';
import Customer from './pages/Customer';
import BookingDetail from './pages/BookingDetail';
import SitterDetail from './pages/SitterDetail';
import CustomerDetail from './pages/CustomerDetail';

// ----------------------------------------------------------------------

export default function Router() {
  return useRoutes([
    {
      path: '/dashboard',
      element: <DashboardLayout />,
      children: [
        { path: 'app', element: <DashboardApp /> },
        { path: 'user', element: <User /> },
        { path: 'products', element: <Products /> },
        { path: 'blog', element: <Blog /> },
        { 
          path: 'sitlist', 
          children: [
            { index: true, element: <Sitter /> },
            { path: ':sitterId', element: <SitterDetail /> },
          ],
        },
        {
          path: 'schedule',
          children: [
            { index: true, element: <Booking /> },
            { path: ':bookingId', element: <BookingDetail /> },
          ],
        },
        { 
          path: 'customer',
          children: [
            { index: true, element: <Customer /> },
            { path: ':customerId', element: <CustomerDetail /> },
          ],
        },
      ],
    },
    {
      path: 'login',
      element: <Login />,
    },
    {
      path: 'register',
      element: <Register />,
    },
    {
      path: '/',
      element: <LogoOnlyLayout />,
      children: [
        { path: '/', element: <Navigate to="/login" /> },
        { path: '/home', element: <Navigate to="/dashboard/app" /> },
        { path: '404', element: <NotFound /> },
        { path: '*', element: <Navigate to="/404" /> },
      ],
    },
    {
      path: '*',
      element: <Navigate to="/404" replace />,
    },
  ]);
}
