

1. **What is PostgreSQL?**  
   PostgreSQL একটি ওপেন-সোর্স রিলেশনাল ডেটাবেস সিস্টেম।

2. **What is the purpose of a database schema in PostgreSQL?**  
   টেবিল, ফাংশনসহ ডেটা গুছিয়ে রাখতে Schema সাহায্য করে।

3. **Explain the Primary Key and Foreign Key concepts in PostgreSQL.**  
   - **Primary Key**: যার মাধ্যমে আমরা কোন একটি টেবিল এর প্রতিটি Row কে নির্দিষ্ট ভাবে চিহ্নিত করতে পারি তাকে Primary Key বলে ।
   - **Foreign Key**: যদি কোন টেবিল এর প্রাইমারী কী অন্য কোন টেবিল এ সাধারণ কলাম হিসেবে ব্যবহার করা হয় তবে ২য় টেবিল কলাম টিকে Foreign Key বলে ।

4. **What is the difference between the VARCHAR and CHAR data types?**  
   - **VARCHAR**: VARCHAR হচ্ছে character এর পরিবর্তনশীল দৈর্ঘ্য।  
   - **CHAR**: CHAR হচ্ছে character টাইপ এর নির্দিষ্ট দৈর্ঘ্য ।

5. **Explain the purpose of the WHERE clause in a SELECT statement.**  
   ডেটা ফিল্টার করতে WHERE ক্লজ ব্যবহার হয়।

6. **What are the LIMIT and OFFSET clauses used for**  
   - **LIMIT**: কয়টা রেকর্ড দেখাবো সেটি সেট করতে LIMIT ব্যবহার করা হয় ।  
   - **OFFSET**: শুরু থেকে কয়টা বাদ দিবো সেটি সেট করতে OFFSET ব্যবহার করা হয় ।

7. **How can you modify data using UPDATE statements?**  
   UPDATE statement ব্যবহার করে টেবিলের রেকর্ড এর ডাটা পরিবর্তন করা যায় এর syntax হচ্ছেঃ
   ```
   UPDATE table_name
   SET column_name = value
   WHERE condition;
   ```

8. **What is the significance of the JOIN operation, and how does it work in PostgreSQL?**  
   JOIN হলো SQL এর একটি অপারেশন, দুটি টেবিলের সম্পর্কযুক্ত ডেটা একসাথে সংযুক্ত করে দেখাতে JOIN Operation ব্যবহার করা হয় ।

9. **Explain the GROUP BY clause and its role in aggregation operations.**  
   GROUP BY একটি Clause,যা একই মানের ডেটা গ্রুপ করে বিশ্লেষণ করে।

10. **How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?**  
    - **COUNT**: মোট রেকর্ড সংখ্যা নির্ধারণ করে ।
    - **SUM**: মোট যোগফল দেয় ।  
    - **AVG**:গড় মান নির্ধারণ করে ।


    ```
    SELECT COUNT(*) FROM books;
    SELECT SUM(price) FROM books;
    SELECT AVG(price) FROM books;
    ```