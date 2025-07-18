truncate table products;

INSERT INTO products (code, name, description, image_url, price) VALUES
             ('P001', 'Clean Code', 'A Handbook of Agile Software Craftsmanship by Robert C. Martin', 'https://example.com/images/clean_code.jpg', 45.99),
             ('P002', 'The Pragmatic Programmer', 'Your Journey to Mastery by Andrew Hunt and David Thomas', 'https://example.com/images/pragmatic_programmer.jpg', 49.50),
             ('P003', 'Introduction to Algorithms', 'The classic algorithm textbook by Cormen, Leiserson, Rivest, and Stein', 'https://example.com/images/algorithms.jpg', 95.00),
             ('P004', 'Design Patterns', 'Elements of Reusable Object-Oriented Software by the Gang of Four', 'https://example.com/images/design_patterns.jpg', 59.99),
             ('P005', 'Refactoring', 'Improving the Design of Existing Code by Martin Fowler', 'https://example.com/images/refactoring.jpg', 47.75),
             ('P006', 'Effective Java', 'A comprehensive guide to best practices in Java by Joshua Bloch', 'https://example.com/images/effective_java.jpg', 55.00),
             ('P007', 'You Don’t Know JS', 'A deep dive into JavaScript mechanics by Kyle Simpson', 'https://example.com/images/you_dont_know_js.jpg', 38.25),
             ('P008', 'Spring in Action', 'Covers Spring Framework with practical examples by Craig Walls', 'https://example.com/images/spring_in_action.jpg', 50.20),
             ('P009', 'Java Concurrency in Practice', 'Multithreading concepts explained for Java developers', 'https://example.com/images/java_concurrency.jpg', 52.95),
             ('P010', 'Cracking the Coding Interview', '189 Programming Questions and Solutions by Gayle Laakmann McDowell', 'https://example.com/images/ctci.jpg', 39.99),
             ('P011', 'The Art of Computer Programming', 'Donald Knuth’s monumental work on algorithms and programming', 'https://example.com/images/taocp.jpg', 190.00),
             ('P012', 'Code Complete', 'A practical handbook of software construction by Steve McConnell', 'https://example.com/images/code_complete.jpg', 60.00),
             ('P013', 'Groking Algorithms', 'An illustrated guide for beginners by Aditya Bhargava', 'https://example.com/images/grokking_algorithms.jpg', 36.00),
('P014', 'Domain-Driven Design', 'Tackling Complexity in the Heart of Software by Eric Evans', 'https://example.com/images/ddd.jpg', 64.95),
             ('P015', 'Site Reliability Engineering', 'How Google Runs Production Systems by Betsy Beyer et al.', 'https://example.com/images/sre.jpg', 72.00);
