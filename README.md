# trianglealign
Homework 4 for Dr. Terry Boult's Computational Linear Algebra


Part 1:  Basic alignment. (15 pts) To make thing easier for the first part, and address some issues with image types, I've  uploaded a subset of data to http://vast.uccs.edu/~tboult/CS1300/small-muct.zip   The website has an imace describing the landmark locations.   To apply face recognition we want the faces aligned.  Define a standard face image with specified size and desired location for the eyes and nose.   Write code to read the landmarks and using the landmarks from eye centers and base of nose  define an affine transformation mapping each "standard" reference to the input image landmarks.  You can then apply that apply transform to any pixel location in the standard to find what pixel in the input image to copy.   Apply the transformations to at least 10 images, showing the result.

We are able to load in images, and remove image data for images that don't exist.

Part 2: Least-squares alignment. (25 pts)   Using at least 10 different landmarks and do a least-squares estimate of an affine transform to align a face to the standard reference.  Show the result on the same images from Part 1.

No progress yet

Part 3:  Full alignment Morph: (25 pts)  Using the full set of mesh points define a standard reference.  Then using the images do a full-mesh image alignment for the same images as part 1 and 2. 

No progress yet

Part 4:  Face Morph:  (35 pts) Using 2 images, with the associated meshes,  do a blending morph from one face to another.  (E.g. see http://www.cs.cmu.edu/afs/andrew/scs/cs/15-463/f07/proj3/www/wwedler/ and http://www.cs.cmu.edu/afs/andrew/scs/cs/15-463/f07/proj3/www/wwedler/Morph60/Morph.wmv).   Make a moving showing both the morphing grid of point and the actual morphed face images.   

No progress yet

Extra Credit (30 pts):

Divided the full set of MUCT images into a training and test set, then use your eigenfaces from program 3 to estimate the rank 1 recognition rate using the different alignments. 

Probably not happening
