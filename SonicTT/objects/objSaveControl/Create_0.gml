/// @description  Create Objects and Variables
slots[0]=instance_create(64,120,objSaveSlot);
slots[1]=instance_create(192,120,objSaveSlot);
slots[2]=instance_create(320,120,objSaveSlot);
slots[3]=instance_create(448,120,objSaveSlot);
slots[4]=instance_create(576,120,objSaveSlot);
slots[5]=instance_create(704,120,objSaveSlot);
slots[6]=instance_create(832,120,objSaveSlot);
slots[7]=instance_create(960,120,objDeleteSlot);

slots[0].slotNumber = 0;
slots[1].slotNumber = 1;
slots[2].slotNumber = 2;
slots[3].slotNumber = 3;
slots[4].slotNumber = 4;
slots[5].slotNumber = 5;
slots[6].slotNumber = 6;
slots[7].slotNumber = 7;

xSpeed=0;
selectCheck=0;
x=slots[0].x;
y=slots[0].y;
selectState =0;
// left = 0 right = 1
stageLeftRight = 1;



