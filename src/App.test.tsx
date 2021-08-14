import React from 'react';
import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const textElement = screen.getByText(/WAFFL Archive 2/i);
  expect(textElement).toBeInTheDocument();
});
