/ This is a little icky.  We basically have to rotate a subvector by dropping
/ 0-2 elements, storing all those vectors, then dropping from the ends.  We
/ line up and sum the results, then enumerate pairwise grade
+/>':+/(!3){(-3+#y)#x _ y}\:`i$0:"input.txt"
