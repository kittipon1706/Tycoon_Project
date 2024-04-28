console.warn('main.js loaded')
import { world, system, Player } from "@minecraft/server"
import { ActionFormData, ModalFormData } from "@minecraft/server-ui"
var quest_text = []
system.afterEvents.scriptEventReceive.subscribe((event) => {
    const id = event.id
    const messsage = event.message
    const stage = world.scoreboard.getObjective('stage').getScore('dummy')
    if (id === "q:quest_update") {
        const mainquest = world.scoreboard.getObjective('mainquest_start').getScore('dummy')
        const keyquest = world.scoreboard.getObjective('keyquest_start').getScore('dummy')
        const expansionquest = world.scoreboard.getObjective('expansionquest_start').getScore('dummy')
        var player = world.getAllPlayers()
        if (quest_text.includes('@@' + messsage) == true) return
        if (mainquest == 1) {
            if (stage == 1 || stage == 0) {
                if (quest_text.includes('@@stage1_key') == true) quest_text = []
                if (quest_text.includes('@@stage1_expand') == true) quest_text = []
                if (quest_text.includes('@@stage1_main') == false) quest_text.push('@@stage1_main')
                if (messsage != null) {
                    if (messsage == 1 && quest_text.includes('@@1') == false) {
                        quest_text.push('@@' + 1)
                    }
                    else if (messsage == -1 && quest_text.includes('@@1') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@1') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                    else if (messsage == 2 && quest_text.includes('@@2') == false) {
                        quest_text.push('@@' + 2)
                    }
                    else if (messsage == -2 && quest_text.includes('@@2') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@2') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                    else if (messsage == 3 && quest_text.includes('@@3') == false) {
                        quest_text.push('@@' + 3)
                    }
                    else if (messsage == -3 && quest_text.includes('@@3') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@3') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                }
            }
        }
        else if (keyquest == 1) {
            if (stage == 1 || stage == 0) {
                if (quest_text.includes('@@stage1_main') == true) quest_text = []
                if (quest_text.includes('@@stage1_expand') == true) quest_text = []
                if (quest_text.includes('@@stage1_key') == false) quest_text.push('@@stage1_key')
                if (messsage != null) {
                    if (messsage == 4 && quest_text.includes('@@4') == false) {
                        quest_text.push('@@' + 4)
                    }
                    else if (messsage == -4 && quest_text.includes('@@4') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@4') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                }
            }
        }
        else if (expansionquest == 1) {
            if (stage == 1 || stage == 0) {
                if (quest_text.includes('@@stage1_main') == true) quest_text = []
                if (quest_text.includes('@@stage1_key') == true) quest_text = []
                if (quest_text.includes('@@stage1_expand') == false) quest_text.push('@@stage1_expand')
                if (messsage != null) {
                    if (messsage == 5 && quest_text.includes('@@5') == false) {
                        quest_text.push('@@' + 5)
                    }
                    else if (messsage == -4 && quest_text.includes('@@5') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@5') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                }
            }
        }
        else if (messsage == 0) {
            quest_text = ['@@0']
        }
        if (player.length > 0)
            player[0].runCommandAsync('title @a title ' + quest_text.toString())

    }
})
world.beforeEvents.itemUse.subscribe((data) => {
    let player = data.source
    const stage = world.scoreboard.getObjective('stage').getScore('dummy')
    const car_type = world.scoreboard.getObjective('cartype_generate').getScore('dummy')
    if (data.itemStack.typeId == "bridge:car_brochure") system.run(() => main(player))
    if (data.itemStack.typeId == "bridge:contract") system.run(() => main1(player))
    function main() {
        if (car_type > 0) {
            const form = new ActionFormData()
                .title('Car Category')
                .body('')
            if (car_type >= 1)
                form.button('cartype : 1', 'textures/ui/car/normal_car1_icon')
            if (car_type >= 2)
                form.button('cartype : 2', 'textures/ui/car/normal_car2_icon')
            if (car_type >= 3)
                form.button('cartype : 3', 'textures/ui/car/normal_car3_icon')
            form.show(player).then(r => {
                if (r.canceled == true) return
                if (r.selection != null)
                    player.runCommandAsync("scoreboard players set dummy cartype_generate " + (r.selection + 1).toString())
            })
        }
    }
    function main1() {
        if (stage == 1) {
            const form = new ModalFormData()
                .textField('', '(need 10000$)Sign your name : ' + player.nameTag.toString())
                .title('DEALERSHIP UPGRADE CONTRACT')
            form.show(player).then((r) => {
                if (r.formValues == player.nameTag) {
                    player.runCommandAsync("execute if score dummy money matches 10000.. run function stage1/Expansion_Quest/on_clear_expansionquest_stage1")
                    player.runCommandAsync("execute if score dummy money matches 10000.. run scoreboard players remove dummy money 10000")
                }
            })
        }
    }
})