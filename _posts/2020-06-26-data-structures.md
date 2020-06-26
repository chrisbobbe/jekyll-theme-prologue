---
title: Data Structures
author: Teo
layout: post
---
<header> <h2> What are data structures? </h2> </header>
<p> Data structure are specialized formats for organizing, processing, retrieving and storing data. While there are several basic and advanced structure types,
any data structure is efficient in some operations and inefficient in others. Therefore, the goal is to understand them in order to pick the most optimal data structure
for the problem at hand.</p>
<p> Commonly used Data Structures are the following (listed from the easiest to wrap your head around to the hardest in my opinion): 

<div class="6u$ 12u$(small)">
			<ol>
				<li>Arrays</li>
				<li>Linked Lists</li>
				<li>Stacks</li>
				<li>Queues</li>
				<li>Trees</li>
        <li>Graphs</li>
        <li>Hash Tables</li>
			</ol>
		</div>

<hr/>

<br>
<h2> Arrays </h2>
<p> An array is the simplest and most widely used data structure. Other data structures like stacks and queues are derived from arrays

<p><span class="image left"><img src="{{ 'assets/images/pic03.jpg' | relative_url }}" alt="" /></span> Here’s an image of a simple array of size 10, containing elements (1, 2, 3 and 4).  
Each data element is assigned a positive numerical value called the Index, which corresponds to the position of that item in the array. The majority of languages define the starting index of the array as 0. </p>
 <br>
 <br>
 <br>
<p><span class="image right"><img src="{{ 'assets/images/pic03.jpg' | relative_url }}" alt="" /></span>  

<div class="6u$ 12u$(small)">
		<h3> Types of Arrays </h3>
			<ul>
				<li> One-dimensional arrays (as shown above)</li>
				<li>  Multi-dimensional arrays (arrays within arrays)</li>
			</ul>
		</div>
  </p>

<div class="6u$ 12u$(small)">
	<h3> Basic Operations on Arrays </h3>
			<ul>
				<li> <b>Insert</b> — Inserts an element at a given index</li>
				<li> <b> Get </b>— Returns the element at a given index </li>
				 <li> <b>Delete</b> — Deletes an element at a given index </li>
				  <li><b> Size </b>— Gets the total number of elements in an array </li>
			</ul>
		</div>

<h3> Implementation in Java </h3>
<hr/>

<br>
<h2> Linked Lists</h2>
<p> A linked list is another important linear data structure which might look similar to arrays at first but differs in memory allocation, internal structure and how basic operations of insertion and deletion are carried out.

A linked list is like a chain of nodes, where each node contains information like data and a pointer to the succeeding node in the chain. There’s a head pointer, which points to the first element of the linked list, and if the list is empty then it simply points to null or nothing.

Linked lists are used to implement file systems, hash tables, and adjacency lists.

Here’s a visual representation of the internal structure of a linked list: </p>

<div class="6u$ 12u$(small)">
		<h3> Types of Linked Lists </h3>
			<ul>
				<li> Singly Linked List (Unidirectional)</li>
				<li>  Doubly Linked List (Bi-directional)</li>
			</ul>
		</div>
		
<div class="6u$ 12u$(small)">
	<h3> Basic Operations on Linked Lists </h3>
			<ul>
				<li> <b> InsertAtEnd </b> — Inserts a given element at the end of the linked list </li>
				<li> <b> InsertAtHead </b> — Inserts a given element at the start/head of the linked list </li>
				<li> <b> Delete </b> — Deletes a given element from the linked list </li>
				<li> <b> DeleteAtHead </b> — Deletes the first element of the linked list </li>
				<li> <b> Search </b> — Returns the given element from a linked list </li>
				<li> <b> isEmpty </b> — Returns true if the linked list is empty</li>
			</ul>
		</div>		    

<h3> Implementation in Java </h3>

<p> 🧠In the <b> array </b> the elements belong to indexes, i.e., if you want to get into the fourth element you have to write the variable name with its index or location within the square bracket. In a <b> linked list </b> though, you have to start from the head and work your way through until you get to the fourth element. As a result, accessing an element in an array is fast, while linked list takes linear time, so it is quite a bit slower. 
	<br>
🧠 Operations like insertion and deletion in  <b> array </b> consume a lot of time. On the other hand, the performance of these operations in <b> linked lists </b> is fast.</p>

<p> 🧠<b> Arrays </b> are of fixed size. In contrast,<b> linked lists </b> are dynamic and flexible and can expand and contract its size. </p>
	
<p>🧠 In an  <b> array </b>, memory is assigned during compile time while in a <b> linked list </b>it is allocated during execution or runtime. </p>
	
<p> 🧠Elements are stored consecutively in  <b> arrays </b> whereas they are stored randomly in <b> linked lists </b>.</p>
<hr/>
<br>


	
<h2> </h2>
<p> </p>

<h2> </h2>
<p> </p>

<h2> </h2>
<p> </p>

<h2> </h2>
<p> </p>

<h2> </h2>
<p> </p>

<h2> </h2>
<p> </p>

<h2> </h2>
<p> </p>

