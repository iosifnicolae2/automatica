%3
fm = [1 2 6 5; 2 3 7 6; 3 4 8 7; 4 1 5 8; 1 2 3 4; 5 6 7 8];
vm = [0 0 0; 1 0 0; 1 1 0; 0 1 0; 0 0 1; 1 0 1; 1 1 1; 0 1 1];
R=rotx(pi/3)*roty(pi/6)*rotz(pi/2);
hold
patch('Vertices',vm,'Faces',fm, 'FaceVertexCData',hsv(6),'FaceColor','flat');
vm = vm*R;
patch('Vertices',vm,'Faces',fm, 'FaceVertexCData',hsv(6),'FaceColor','flat');
view(-37, 35)
axis equal
