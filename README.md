# Employee Department and Manager Query

This SQL query finds the current department assignment of each employee along with the current manager of that department.

## Features

- Uses the latest `from_date` from `dept_emp` to find each employee's current department.
- Uses the latest `from_date` from `dept_manager` to find the current manager per department.
- Joins the two results to show the employee number, their department number, and their manager's employee number.

## Usage

Run the `current_dept_manager.sql` script on your employee database to get the current department and manager mappings.
