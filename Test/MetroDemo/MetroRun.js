//.pragma library

function MetroRun() {
    timer.interval = 6000
    welcomeui.visible = false
    if(root.startstation <= root.endstation && root.just == true)
    {
        root.just = true
        if(timer.berth)
        {
            if(root.startstation >= root.endstation)
            {
                root.startstation = 25
                root.endstation = 0
                root.nextstation = 25
                root.just = false
            }
            root.startstation = root.nextstation;
            currentstationui.visible = true
            nextstationui.visible = false
            timer.berth = false
        } else {
            currentstationui.visible = false
            nextstationui.visible = true
            root.nextstation = root.startstation + 1;
            root.doorOpen = !root.doorOpen;
            timer.berth = true
        }
    } else if(root.startstation >= root.endstation && root.just == false)
    {
        root.just = false
        if(timer.berth)
        {
            if(root.startstation <= root.endstation)
            {
                root.startstation = 0
                root.endstation = 25
                root.nextstation = 0
                root.just = true
            }
            root.startstation = root.nextstation;
            currentstationui.visible = true
            nextstationui.visible = false
            timer.berth = false
        } else {
            currentstationui.visible = false
            nextstationui.visible = true
            root.nextstation = root.startstation - 1;
            root.doorOpen = !root.doorOpen;
            timer.berth = true
        }
    }
    console.log("root.nextstation: " + root.nextstation + " root.startstation: " + root.startstation);
}
