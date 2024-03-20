import { world } from "@minecraft/server"
import { ActionFormData } from "@minecraft/server-ui"

const ui = new ActionFormData()
    .title("Car Category")
    .body("")
    .button("car1")
    .button("car1")
    .button("car1");

const customUi = new ActionFormData()
    .title("Salesman Category")
    .body("")
    .button("salesman1")
    .button("salesman2")
    .button("salesman3 ");

world.afterEvents.itemUse.subscribe((event) => {
    const { source, itemStack } = event
    switch (itemStack.typeId) {
        case "bridge:car_borchure": ui.show(source); break
        case "bridge:salesman_borchure": customUi.show(source); break
    }
})
