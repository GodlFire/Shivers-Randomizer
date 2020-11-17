--Create Form
ShiversPotScrambleInterface = createForm()
control_setSize(ShiversPotScrambleInterface, 400,400)
control_setCaption(ShiversPotScrambleInterface, "Shivers Randomizer")
setProperty(ShiversPotScrambleInterface , "BiDiMode", "bdLeftToRight")
setProperty(ShiversPotScrambleInterface, "Position", "poScreenCenter")
x,y = control_getSize(ShiversPotScrambleInterface)

--Create Buttons
btnHelp = createButton(ShiversPotScrambleInterface)
control_setSize(btnHelp, 50, 20)
control_setCaption(btnHelp, "Help!")
control_setPosition(btnHelp, x-60,10)
control_onClick(btnHelp,btnHelpClick)

btnAttach = createButton(ShiversPotScrambleInterface)
control_setSize(btnAttach, 120, 20)
control_setCaption(btnAttach, "Attach to Shivers")
control_setPosition(btnAttach, 10,30)
control_onClick(btnAttach,btnAttachClick)

btnScramble = createButton(ShiversPotScrambleInterface)
control_setSize(btnScramble, 80, 20)
control_setCaption(btnScramble, "Scramble")
control_setPosition(btnScramble, 10,360)
control_onClick(btnScramble,btnScrambleClick)

--Create Check Boxes
cbExtraLocations = createCheckBox(ShiversPotScrambleInterface)
control_setCaption(cbExtraLocations, "Include Eagles Nest,Library Cabinet, and Tiki Hut")
control_setPosition(cbExtraLocations, 30,215)
control_onClick(cbExtraLocations, cbExtraLocationsClick)

cbExcludeLyre = createCheckBox(ShiversPotScrambleInterface)
control_setCaption(cbExcludeLyre, "Exclude Lyre")
control_setPosition(cbExcludeLyre, 30,235)
control_onClick(cbExcludeLyre, cbExcludeLyreClick)
control_setEnabled(cbExcludeLyre, false)

cbRaceMode = createCheckBox(ShiversPotScrambleInterface)
control_setCaption(cbRaceMode, "RaceMode")
control_setPosition(cbRaceMode, 30,275)
control_onClick(cbRaceMode, cbRaceModeClick)

cbOpenRedDoor = createCheckBox(ShiversPotScrambleInterface)
control_setCaption(cbOpenRedDoor, "Red Door Open")
control_setPosition(cbOpenRedDoor, 30,295)
control_onClick(cbOpenRedDoor, cbOpenRedDoorClick)
control_setEnabled(cbOpenRedDoor, false)

cbCatagoryFirstToFive = createCheckBox(ShiversPotScrambleInterface)
control_setCaption(cbCatagoryFirstToFive, "First to the Only Five")
control_setPosition(cbCatagoryFirstToFive, 30,315)
control_onClick(cbCatagoryFirstToFive, cbCatagoryFirstToFiveClick)
control_setEnabled(cbCatagoryFirstToFive, false)

--Create Text Boxes
txtboxSeed = createEdit(ShiversPotScrambleInterface)
control_setPosition(txtboxSeed, 10,120)

--Create Labels
lblAttachStatus1 = createLabel(ShiversPotScrambleInterface)
control_setCaption(lblAttachStatus1, "Status:")
control_setPosition(lblAttachStatus1, 10,10)

lblAttachStatus2 = createLabel(ShiversPotScrambleInterface)
control_setCaption(lblAttachStatus2, "Launch shivers and then attach")
control_setPosition(lblAttachStatus2, 50,10)

lblSeed = createLabel(ShiversPotScrambleInterface)
control_setCaption(lblSeed, "Seed, leave blank for random seed, numberes only:")
control_setPosition(lblSeed, 10,100)

lblSettings = createLabel(ShiversPotScrambleInterface)
control_setCaption(lblSettings, "Settings:")
control_setPosition(lblSettings, 10,200)

lblScrambleNumber1 = createLabel(ShiversPotScrambleInterface)
control_setCaption(lblScrambleNumber1, "Scramble Number:")
control_setPosition(lblScrambleNumber1, 10,380)

lblScrambleNumber2 = createLabel(ShiversPotScrambleInterface)
control_setCaption(lblScrambleNumber2, "0")
control_setPosition(lblScrambleNumber2, 120,380)


ShiversPotScrambleInterface.onClose = function (sender)
  closeCE()
  return caHide --Possible options: caHide, caFree, caMinimize, caNone
end


