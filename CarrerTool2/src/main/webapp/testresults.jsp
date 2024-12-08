<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test Responses</title>
    <link rel="stylesheet" href="styles/theme.css">
</head>
<body>
    <div class="container">
        <h1 class="table-title">Test Responses</h1>
        <table class="styled-table">
            <thead>
                <tr>
                    <th>Response ID</th>
                    <th>User Email</th>
                    <th>Question 1</th>
                    <th>Question 2</th>
                    <th>Question 3</th>
                    <th>Question 4</th>
                    <th>Question 5</th>
                    <th>Question 6</th>
                    <th>Question 7</th>
                    <th>Question 8</th>
                    <th>Question 9</th>
                    <th>Question 10</th>
                </tr>
            </thead>
            <tbody>
                <!-- Dynamic rows will be inserted here -->
            </tbody>
        </table>
    </div>

    <script>
        // Fetch data dynamically using an API
        fetch('/test/getAllResponses')
            .then(response => response.json())
            .then(data => {
                const tbody = document.querySelector('table.styled-table tbody');
                data.forEach(row => {
                    const tr = document.createElement('tr');
                    tr.innerHTML = `
                        <td>${row.id}</td>
                        <td>${row.userEmail}</td>
                        <td>${row.q1}</td>
                        <td>${row.q2}</td>
                        <td>${row.q3}</td>
                        <td>${row.q4}</td>
                        <td>${row.q5}</td>
                        <td>${row.q6}</td>
                        <td>${row.q7}</td>
                        <td>${row.q8}</td>
                        <td>${row.q9}</td>
                        <td>${row.q10}</td>
                    `;
                    tbody.appendChild(tr);
                });
            })
            .catch(error => {
                console.error('Error fetching data:', error);
            });
    </script>
</body>
</html>
