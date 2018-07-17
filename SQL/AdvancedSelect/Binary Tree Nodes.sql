/**
You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.
Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:
Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.
**/

BEGIN TRANSACTION
CREATE TABLE BST(
N int,
P int
)

INSERT  INTO BST(N,P)
	VALUES	(1,2)
			,(3,2)
			,(6,8)
			,(9,8)
			,(2,5)
			,(8,5)
			,(5,null)

--select * from BST

SELECT N,
	CASE
		WHEN N IS NOT NULL AND P IS NULL THEN 'Root'
		WHEN N IS NOT NULL AND P IS NOT NULL AND (SELECT Count(b.P) FROM BST b WHERE b.P = BST.N) > 1 THEN 'Inner'
		WHEN N IS NOT NULL AND P IS NOT NULL AND (SELECT Count(b.P) FROM BST b WHERE b.P=BST.N) = 0 THEN 'Leaf'
	END
FROM BST ORDER BY N;

SELECT BT.N,
    CASE
        WHEN BT.P IS NULL THEN 'Root'
        WHEN EXISTS (SELECT B.P FROM BST B WHERE B.P = BT.N) THEN 'Inner'        
        ELSE 'Leaf'
    END
FROM BST AS BT 
ORDER BY BT.N

ROLLBACK TRANSACTION
