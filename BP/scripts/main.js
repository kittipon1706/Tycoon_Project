console.warn('main.js loaded')
import { world, system, Player } from "@minecraft/server"
import { ActionFormData, ModalFormData } from "@minecraft/server-ui"
var stage
var stage_temp
var objective
var objectives = []
var quest_text = []
world.beforeEvents.playerLeave.subscribe((data) => {
    world.setDynamicProperty('objectives_length', objectives.length)
    for (let i = 0; i < objectives.length; i++) {
        world.setDynamicProperty(i.toString(), objectives[i])
    }
})

system.run(() => {
    let i = world.getDynamicProperty('objectives_length')
    for (i; i >= 0; i--) {
        const num = world.getDynamicProperty(i.toString())
        if (objectives.includes(num) == false)
            objectives.push(num)
    }
})

system.runInterval(() => {
    stage = world.scoreboard.getObjective('stage').getScore('dummy')
    stage_temp = world.getDynamicProperty('stage')
    objective = world.scoreboard.getObjective('cartype_generate').getScore('dummy')
    if (objective == 0 || stage != stage_temp) {
        objectives = []
        world.setDynamicProperty('objectives_length', objectives.length)
    }
    if (objectives.includes(objective) == false) {
        objectives.push(objective)
    }
    world.setDynamicProperty('stage', stage)

    if (stage == 1) {
        var st1_main1_clear = world.scoreboard.getObjective('st1_main1_clear').getScore('dummy')
        var st1_main2_clear = world.scoreboard.getObjective('st1_main2_clear').getScore('dummy')
        var st1_main3_clear = world.scoreboard.getObjective('st1_main3_clear').getScore('dummy')
        var st1_keyquest_clear = world.scoreboard.getObjective('st1_keyquest_clear').getScore('dummy')

        if (quest_text.includes('@@stage1_quest') == false) {
            quest_text.push('@@stage1_quest')
        }

        if (st1_main1_clear == 1 && quest_text.includes('@@1') == false) {
            quest_text.push('@@1')
        }
        else if (st1_main1_clear == 0 && quest_text.includes('@@1') == true) {
            for (let i = 0; i < quest_text.length; i++) {
                if (quest_text[i] == '@@1') {
                    quest_text.splice(i, 1);
                }
            }
        }

        if (st1_main2_clear == 1 && quest_text.includes('@@2') == false) {
            quest_text.push('@@2')
        }
        else if (st1_main2_clear == 0 && quest_text.includes('@@2') == true) {
            for (let i = 0; i < quest_text.length; i++) {
                if (quest_text[i] == '@@2') {
                    quest_text.splice(i, 1);
                }
            }
        }

        if (st1_main3_clear == 1 && quest_text.includes('@@3') == false) {
            quest_text.push('@@3')
        }
        else if (st1_main3_clear == 0 && quest_text.includes('@@3') == true) {
            for (let i = 0; i < quest_text.length; i++) {
                if (quest_text[i] == '@@3') {
                    quest_text.splice(i, 1);
                }
            }
        }

        if (st1_keyquest_clear == 1 && quest_text.includes('@@4') == false) {
            quest_text.push('@@4')
        }
        else if (st1_keyquest_clear == 0 && quest_text.includes('@@4') == true) {
            for (let i = 0; i < quest_text.length; i++) {
                if (quest_text[i] == '@@4') {
                    quest_text.splice(i, 1);
                }
            }
        }
    }
    else quest_text = []

    var player = world.getAllPlayers()
    if (player.length > 0)
        player[0].runCommandAsync('title @a title ' + quest_text.toString())
});

world.beforeEvents.itemUse.subscribe((data) => {
    let player = data.source
    if (data.itemStack.typeId == "bridge:car_brochure") system.run(() => main(player))
    if (data.itemStack.typeId == "bridge:contract") system.run(() => main1(player))
    function main() {
        if (stage == 1 && (objectives.length - 1) < 3) {
            const form = new ActionFormData()
                .title('Car Category')
                .body('')
            if (!objectives.includes(1))
                form.button('cartype : 1', 'textures/ui/car/normal_car1_icon')
            if (!objectives.includes(2))
                form.button('cartype : 2', 'textures/ui/car/normal_car2_icon')
            if (!objectives.includes(3))
                form.button('cartype : 3', 'textures/ui/car/normal_car3_icon')
            form.show(player).then(r => {
                if (r.selection == 0) {

                    if (objectives.includes(1) && objectives.includes(2)) {
                        player.runCommandAsync("scoreboard players set dummy cartype_generate 3")
                    }
                    else if (objectives.includes(1)) {
                        player.runCommandAsync("scoreboard players set dummy cartype_generate 2")
                    }
                    else
                        player.runCommandAsync("scoreboard players set dummy cartype_generate 1")

                }
                else if (r.selection == 1) {

                    if (objectives.includes(1)) {
                        player.runCommandAsync("scoreboard players set dummy cartype_generate 3")
                    }
                    else if (objectives.includes(2)) {
                        player.runCommandAsync("scoreboard players set dummy cartype_generate 3")
                    }
                    else
                        player.runCommandAsync("scoreboard players set dummy cartype_generate 2")
                }
                else if (r.selection == 2)
                    player.runCommandAsync("scoreboard players set dummy cartype_generate 3")
            })
        }
    }
    function main1() {
        if (stage == 1) {
            const form = new ModalFormData()
                .textField('', 'Sign your name : ' + player.nameTag.toString())
            form.show(player).then((r) => {
                if (r.formValues == player.nameTag) {
                    player.runCommandAsync("execute if score dummy money matches 10000.. run function mergbuilding1_2")
                }
            })
        }
    }
})