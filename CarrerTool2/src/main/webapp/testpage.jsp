<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>English Test</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 20px;
            color: #333;
        }

        h2 {
            text-align: center;
            color: #005b96;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .question {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            background-color: #03396c;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #005b96;
        }
    </style>
</head>
<body>
    <h2>English Test</h2>
    <form id="englishTestForm">
        <!-- Hidden email input -->
        <input type="hidden" id="userEmail" name="userEmail" value=""/>

        <div class="question">
            <label for="q1">1. What is the synonym of "Happy"?</label>
            <input type="text" id="q1" name="q1" required>
        </div>
        <div class="question">
            <label for="q2">2. Fill in the blank: She is _______ to school.</label>
            <input type="text" id="q2" name="q2" required>
        </div>
        <div class="question">
            <label for="q3">3. Choose the correct spelling: (a) Receive (b) Recieve (c) Recive</label>
            <input type="text" id="q3" name="q3" required>
        </div>
        <div class="question">
            <label for="q4">4. What is the antonym of "Difficult"?</label>
            <input type="text" id="q4" name="q4" required>
        </div>
        <div class="question">
            <label for="q5">5. Correct the sentence: He go to school every day.</label>
            <textarea id="q5" name="q5" rows="3" required></textarea>
        </div>
        <div class="question">
            <label for="q6">6. What is the plural of "Child"?</label>
            <input type="text" id="q6" name="q6" required>
        </div>
        <div class="question">
            <label for="q7">7. Write a sentence using the word "beautiful".</label>
            <textarea id="q7" name="q7" rows="3" required></textarea>
        </div>
        <div class="question">
            <label for="q8">8. Identify the noun: The cat is on the roof.</label>
            <input type="text" id="q8" name="q8" required>
        </div>
        <div class="question">
            <label for="q9">9. Write the past tense of "Run".</label>
            <input type="text" id="q9" name="q9" required>
        </div>
        <div class="question">
            <label for="q10">10. What is the opposite of "Fast"?</label>
            <input type="text" id="q10" name="q10" required>
        </div>
        <button type="submit">Submit Test</button>
    </form>

    <h1>Test Responses</h1>
    <table>
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
        <tbody id="responsesTable">
            <!-- Dynamic rows will be inserted here -->
        </tbody>
    </table>

    <script>
        // Fetch data dynamically using an API
        fetch('/test/getAllResponses')
            .then(response => response.json())
            .then(data => {
                const tbody = document.querySelector('#responsesTable');
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

        document.getElementById("englishTestForm").addEventListener("submit", function(event) {
            event.preventDefault();

            const userEmail = localStorage.getItem('userEmail');
            document.getElementById('userEmail').value = userEmail;

            const formData = new FormData(this);
            const json = Object.fromEntries(formData.entries());

            fetch("/test/submitEnglishTest", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(json),
            })
            .then(response => response.text())
            .then(data => {
                alert("Test submitted successfully!");
                console.log(data);
            })
            .catch(error => {
                console.error("Error:", error);
                alert("There was an error submitting the test.");
            });
        });
    </script>
</body>
</html>
