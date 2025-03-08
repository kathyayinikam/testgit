// Get the display element
const display = document.getElementById('display');

// Function to append values to the display
function appendToDisplay(value) {
  display.value += value;
}

// Function to clear the display
function clearDisplay() {
  display.value = '';
}

// Function to calculate the result
function calculateResult() {
  try {
    // Evaluate the expression
    display.value = eval(display.value);
  } catch (error) {
    // If there's an error, display "Error"
    display.value = 'Error';
  }
}
