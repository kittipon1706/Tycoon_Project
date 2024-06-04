console.warn('main.js loaded')
import { world, system } from "@minecraft/server"
import { ActionFormData, ModalFormData } from "@minecraft/server-ui"
var quest_text = []
var all_player_car = []
const max_cartype = 7
system.run(() => {
    all_player_car = [1]
})
system.afterEvents.scriptEventReceive.subscribe((event) => {
    const id = event.id
    const messsage = event.message
    const stage = world.scoreboard.getObjective('stage').getScore('dummy')
    var player = world.getAllPlayers()
    if (id === "q:test_score") {
        let score_temp = world.scoreboard.getObjective('score_time_players_temp').getScore('dummy')
        const player_tester = world.getPlayers({
            tags: ['Tester'],
        })
        if (player_tester.length < 0) return

        if (messsage == 1) {
            try {
                const score_real = world.scoreboard.getObjective('time_scoreboard').getScore(player_tester[0].name + ':car1')
                if (score_real > score_temp || score_real == 0)
                    player_tester[0].runCommandAsync('scoreboard players set ' + player_tester[0].name + ':car1 ' + 'time_scoreboard ' + score_temp.toString())
            }
            catch (err) {
                player_tester[0].runCommandAsync('scoreboard players set ' + player_tester[0].name + ':car1 ' + 'time_scoreboard ' + score_temp.toString())
            }
        }
        else if (messsage == 2) {
            try {
                const score_real = world.scoreboard.getObjective('time_scoreboard').getScore(player_tester[0].name + ':car2')
                if (score_real > score_temp)
                    player_tester[0].runCommandAsync('scoreboard players set ' + player_tester[0].name + ':car2 ' + 'time_scoreboard ' + score_temp.toString())
            }
            catch (err) {
                player_tester[0].runCommandAsync('scoreboard players set ' + player_tester[0].name + ':car2 ' + 'time_scoreboard ' + score_temp.toString())
            }
        }
    }
    if (id === "q:quest_update") {
        const mainquest = world.scoreboard.getObjective('mainquest_start').getScore('dummy')
        const keyquest = world.scoreboard.getObjective('keyquest_start').getScore('dummy')
        const expansionquest = world.scoreboard.getObjective('expansionquest_start').getScore('dummy')
        if (quest_text.includes('@@' + messsage) == true) return
        if (messsage == 0) {
            quest_text = []
        }
        if (mainquest == 1) {
            if (stage == 1 || stage == 0) {
                if (quest_text.includes('@@stage1_key') == true) quest_text = []
                if (quest_text.includes('@@stage1_expand') == true) quest_text = []
                if (quest_text.includes('@@stage1_main') == false) quest_text.push('@@stage1_main')
                if (messsage != null) {
                    if (messsage == 1 && quest_text.includes('@@1_1') == false) {
                        quest_text.push('@@1_1')
                    }
                    else if (messsage == -1 && quest_text.includes('@@1_1') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@1_1') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                    else if (messsage == 2 && quest_text.includes('@@1_2') == false) {
                        quest_text.push('@@1_2')
                    }
                    else if (messsage == -2 && quest_text.includes('@@1_2') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@1_2') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                    else if (messsage == 3 && quest_text.includes('@@1_3') == false) {
                        quest_text.push('@@1_3')
                    }
                    else if (messsage == -3 && quest_text.includes('@@1_3') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@1_3') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                }
            }
            else if (stage == 2) {
                if (quest_text.includes('@@stage2_key') == true) quest_text = []
                if (quest_text.includes('@@stage2_expand') == true) quest_text = []
                if (quest_text.includes('@@stage2_main') == false) quest_text.push('@@stage2_main')
                if (messsage != null) {
                    if (messsage == 1 && quest_text.includes('@@2_1') == false) {
                        quest_text.push('@@2_1')
                    }
                    else if (messsage == -1 && quest_text.includes('@@2_1') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@2_1') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                    else if (messsage == 2 && quest_text.includes('@@2_2') == false) {
                        quest_text.push('@@2_2')
                    }
                    else if (messsage == -2 && quest_text.includes('@@2_2') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@2_2') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                    else if (messsage == 3 && quest_text.includes('@@2_3') == false) {
                        quest_text.push('@@2_3')
                    }
                    else if (messsage == -3 && quest_text.includes('@@2_3') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@2_3') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                }
            }
            else if (stage == 3) {
                if (quest_text.includes('@@stage3_key') == true) quest_text = []
                if (quest_text.includes('@@stage3_expand') == true) quest_text = []
                if (quest_text.includes('@@stage3_main') == false) quest_text.push('@@stage3_main')
                if (messsage != null) {
                    if (messsage == 10 && quest_text.includes('@@3_1.0') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@3_1.5' || quest_text[i] == '@@3_1.4' || quest_text[i] == '@@3_1.3' || quest_text[i] == '@@3_1.2' || quest_text[i] == '@@3_1.1' || quest_text[i] == '@@3_1.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@3_1.0')
                    }
                    else if (messsage == 11 && quest_text.includes('@@3_1.1') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@3_1.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@3_1.1')
                    }
                    else if (messsage == 12 && quest_text.includes('@@3_1.2') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@3_1.1' || quest_text[i] == '@@3_1.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@3_1.2')
                    }
                    else if (messsage == 13 && quest_text.includes('@@3_1.3') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@3_1.2' || quest_text[i] == '@@3_1.1' || quest_text[i] == '@@3_1.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@3_1.3')
                    }
                    else if (messsage == 14 && quest_text.includes('@@3_1.4') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@3_1.3' || quest_text[i] == '@@3_1.2' || quest_text[i] == '@@3_1.1' || quest_text[i] == '@@3_1.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@3_1.4')
                    }
                    else if (messsage == 15 && quest_text.includes('@@3_1.5') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@3_1.4' || quest_text[i] == '@@3_1.3' || quest_text[i] == '@@3_1.2' || quest_text[i] == '@@3_1.1' || quest_text[i] == '@@3_1.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@3_1.5')
                    }
                    else if (messsage == 2 && quest_text.includes('@@3_2') == false) {
                        quest_text.push('@@3_2')
                    }
                    else if (messsage == -2 && quest_text.includes('@@3_2') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@3_2') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                }
            }
            else if (stage == 4) {
                if (quest_text.includes('@@stage4_key') == true) quest_text = []
                if (quest_text.includes('@@stage4_expand') == true) quest_text = []
                if (quest_text.includes('@@stage4_main') == false) quest_text.push('@@stage4_main')
                if (messsage != null) {
                    if (messsage == 1 && quest_text.includes('@@4_1') == false) {
                        quest_text.push('@@4_1')
                    }
                    else if (messsage == -1 && quest_text.includes('@@4_1') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@4_1') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                    else if (messsage == 2 && quest_text.includes('@@4_2') == false) {
                        quest_text.push('@@4_2')
                    }
                    else if (messsage == -2 && quest_text.includes('@@4_2') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@4_2') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                }
            }
            else if (stage == 5) {
                if (quest_text.includes('@@stage5_key') == true) quest_text = []
                if (quest_text.includes('@@stage5_expand') == true) quest_text = []
                if (quest_text.includes('@@stage5_main') == false) quest_text.push('@@stage5_main')
                if (messsage != null) {
                    if (messsage == 1 && quest_text.includes('@@5_1') == false) {
                        quest_text.push('@@5_1')
                    }
                    else if (messsage == -1 && quest_text.includes('@@5_1') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@5_1') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                    else if (messsage == 20 && quest_text.includes('@@5_2.0') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@5_2.1' || quest_text[i] == '@@5_2.2') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@5_2.0')
                    }
                    else if (messsage == 21 && quest_text.includes('@@5_2.1') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@5_2.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@5_2.1')
                    }
                    else if (messsage == 22 && quest_text.includes('@@5_2.2') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@5_2.0' || quest_text[i] == '@@5_2.1') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@5_2.2')
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
                    if (messsage == 4 && quest_text.includes('@@1_4') == false) {
                        quest_text.push('@@1_4')
                    }
                    else if (messsage == -4 && quest_text.includes('@@1_4') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@1_4') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                }
            }
            else if (stage == 2) {
                if (quest_text.includes('@@stage2_main') == true) quest_text = []
                if (quest_text.includes('@@stage2_expand') == true) quest_text = []
                if (quest_text.includes('@@stage2_key') == false) quest_text.push('@@stage2_key')
                if (messsage != null) {
                    if (messsage == 4 && quest_text.includes('@@2_4') == false) {
                        quest_text.push('@@2_4')
                    }
                    else if (messsage == -4 && quest_text.includes('@@2_4') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@2_4') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                }
            }
            else if (stage == 3) {
                if (quest_text.includes('@@stage3_main') == true) quest_text = []
                if (quest_text.includes('@@stage3_expand') == true) quest_text = []
                if (quest_text.includes('@@stage3_key') == false) quest_text.push('@@stage3_key')
                if (messsage != null) {
                    if (messsage == 3 && quest_text.includes('@@3_3') == false) {
                        quest_text.push('@@3_3')
                    }
                    else if (messsage == -3 && quest_text.includes('@@3_3') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@3_3') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                }
            }
            else if (stage == 4) {
                if (quest_text.includes('@@stage4_main') == true) quest_text = []
                if (quest_text.includes('@@stage4_expand') == true) quest_text = []
                if (quest_text.includes('@@stage4_key') == false) quest_text.push('@@stage4_key')
                if (messsage != null) {
                    if (messsage == 3 && quest_text.includes('@@4_3') == false) {
                        quest_text.push('@@4_3')
                    }
                    else if (messsage == -3 && quest_text.includes('@@4_3') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@4_3') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                    else if (messsage == 4 && quest_text.includes('@@4_4') == false) {
                        quest_text.push('@@4_4')
                    }
                    else if (messsage == -4 && quest_text.includes('@@4_4') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@4_4') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                    else if (messsage == 50 && quest_text.includes('@@4_5.0') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@4_5.4' || quest_text[i] == '@@4_5.3' || quest_text[i] == '@@4_5.2' || quest_text[i] == '@@4_5.1') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@4_5.0')
                    }
                    else if (messsage == 51 && quest_text.includes('@@4_5.1') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@4_5.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@4_5.1')
                    }
                    else if (messsage == 52 && quest_text.includes('@@4_5.2') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@4_5.1' || quest_text[i] == '@@4_5.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@4_5.2')
                    }
                    else if (messsage == 53 && quest_text.includes('@@4_5.3') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@4_5.2' || quest_text[i] == '@@4_5.1' || quest_text[i] == '@@4_5.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@4_5.3')
                    }
                    else if (messsage == 54 && quest_text.includes('@@4_5.4') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@4_5.3' || quest_text[i] == '@@4_5.2' || quest_text[i] == '@@4_5.1' || quest_text[i] == '@@3_1.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@4_5.4')
                    }
                }
            }
            else if (stage == 5) {
                if (quest_text.includes('@@stage5_main') == true) quest_text = []
                if (quest_text.includes('@@stage5_expand') == true) quest_text = []
                if (quest_text.includes('@@stage5_key') == false) quest_text.push('@@stage5_key')
                if (messsage != null) {
                    if (messsage == 30 && quest_text.includes('@@5_3.0') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@5_3.1' || quest_text[i] == '@@5_3.2' || quest_text[i] == '@@5_3.3') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@5_3.0')
                    }
                    else if (messsage == 31 && quest_text.includes('@@5_3.1') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@5_3.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@5_3.1')
                    }
                    else if (messsage == 32 && quest_text.includes('@@5_3.2') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@5_3.1' || quest_text[i] == '@@5_3.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@5_3.2')
                    }
                    else if (messsage == 33 && quest_text.includes('@@5_3.3') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@5_3.2' || quest_text[i] == '@@5_3.1' || quest_text[i] == '@@5_3.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@5_3.3')
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
                    if (messsage == 5 && quest_text.includes('@@1_5') == false) {
                        quest_text.push('@@1_5')
                    }
                    else if (messsage == -5 && quest_text.includes('@@1_5') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@1_5') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                }
            }
            else if (stage == 2) {
                if (quest_text.includes('@@stage2_main') == true) quest_text = []
                if (quest_text.includes('@@stage2_key') == true) quest_text = []
                if (quest_text.includes('@@stage2_expand') == false) quest_text.push('@@stage2_expand')
                if (messsage != null) {
                    if (messsage == 5 && quest_text.includes('@@2_5') == false) {
                        quest_text.push('@@2_5')
                    }
                    else if (messsage == -5 && quest_text.includes('@@2_5') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@2_5') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                }
            }
            else if (stage == 3) {
                if (quest_text.includes('@@stage3_main') == true) quest_text = []
                if (quest_text.includes('@@stage3_key') == true) quest_text = []
                if (quest_text.includes('@@stage3_expand') == false) quest_text.push('@@stage3_expand')
                if (messsage != null) {
                    if (messsage == 40 && quest_text.includes('@@3_4.0') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@3_4.5' || quest_text[i] == '@@3_4.4' || quest_text[i] == '@@3_4.3' || quest_text[i] == '@@3_4.2' || quest_text[i] == '@@3_4.1' || quest_text[i] == '@@3_4.6') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@3_4.0')
                    }
                    else if (messsage == 41 && quest_text.includes('@@3_4.1') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@3_4.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@3_4.1')
                    }
                    else if (messsage == 42 && quest_text.includes('@@3_4.2') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@3_4.1' || quest_text[i] == '@@3_4.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@3_4.2')
                    }
                    else if (messsage == 43 && quest_text.includes('@@3_4.3') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@3_4.2' || quest_text[i] == '@@3_4.1' || quest_text[i] == '@@3_4.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@3_4.3')
                    }
                    else if (messsage == 44 && quest_text.includes('@@3_4.4') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@3_4.3' || quest_text[i] == '@@3_4.2' || quest_text[i] == '@@3_4.1' || quest_text[i] == '@@3_4.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@3_4.4')
                    }
                    else if (messsage == 45 && quest_text.includes('@@3_4.5') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@3_4.4' || quest_text[i] == '@@3_4.3' || quest_text[i] == '@@3_4.2' || quest_text[i] == '@@3_4.1' || quest_text[i] == '@@3_4.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@3_4.5')
                    }
                    else if (messsage == 46 && quest_text.includes('@@3_4.6') == false) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@3_4.5' || quest_text[i] == '@@3_4.4' || quest_text[i] == '@@3_4.3' || quest_text[i] == '@@3_4.2' || quest_text[i] == '@@3_4.1' || quest_text[i] == '@@3_4.0') {
                                quest_text.splice(i, 1);
                            }
                        }
                        quest_text.push('@@3_4.6')
                    }
                    else if (messsage == 5 && quest_text.includes('@@3_5') == false) {
                        quest_text.push('@@3_5')
                    }
                    else if (messsage == -5 && quest_text.includes('@@3_5') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@3_5') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                }
            }
            else if (stage == 4) {
                if (quest_text.includes('@@stage4_main') == true) quest_text = []
                if (quest_text.includes('@@stage4_key') == true) quest_text = []
                if (quest_text.includes('@@stage4_expand') == false) quest_text.push('@@stage4_expand')
                if (messsage != null) {
                    if (messsage == 6 && quest_text.includes('@@4_6') == false) {
                        quest_text.push('@@4_6')
                    }
                    else if (messsage == -6 && quest_text.includes('@@4_6') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@4_6') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                    else if (messsage == 7 && quest_text.includes('@@4_7') == false) {
                        quest_text.push('@@4_7')
                    }
                    else if (messsage == -7 && quest_text.includes('@@4_7') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@4_7') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                }
            }
            else if (stage == 5) {
                if (quest_text.includes('@@stage5_main') == true) quest_text = []
                if (quest_text.includes('@@stage5_key') == true) quest_text = []
                if (quest_text.includes('@@stage5_expand') == false) quest_text.push('@@stage5_expand')
                if (messsage != null) {
                    if (messsage == 4 && quest_text.includes('@@5_4') == false) {
                        quest_text.push('@@5_4')
                    }
                    else if (messsage == -4 && quest_text.includes('@@5_4') == true) {
                        for (let i = 0; i < quest_text.length; i++) {
                            if (quest_text[i] == '@@5_4') {
                                quest_text.splice(i, 1);
                            }
                        }
                    }
                }
            }
        }
        if (player.length > 0)
            player[0].runCommandAsync('title @a title ' + quest_text.toString())

    }
    else if (id === "q:car_update") {
        if (messsage == null || all_player_car.includes(messsage) == true) return
        world.sendMessage('message is : ' + messsage)
        if (messsage == 0) {
            all_player_car = []
            for (let i = 1; i <= max_cartype; i++) {
                world.setDynamicProperty(i.toString(), (0).toString())
            }
            return
        }
        else if (messsage == 1) {
            if (player.length > 0)
                player[0].runCommandAsync("scoreboard players set dummy cartype_generate 1")
        }
        else if (messsage == 2) {
            if (player.length > 0)
                player[0].runCommandAsync("scoreboard players set dummy cartype_generate 2")
        }
        else if (messsage == 3) {
            if (player.length > 0)
                player[0].runCommandAsync("scoreboard players set dummy cartype_generate 3")
        }
        else if (messsage == 4) {
            if (player.length > 0)
                player[0].runCommandAsync("scoreboard players set dummy cartype_generate 4")
        }
        else if (messsage == 5) {
            if (player.length > 0)
                player[0].runCommandAsync("scoreboard players set dummy cartype_generate 5")
        }
        else if (messsage == 6) {
            if (player.length > 0)
                player[0].runCommandAsync("scoreboard players set dummy cartype_generate 6")
        }
        else if (messsage == 7) {
            if (player.length > 0)
                player[0].runCommandAsync("scoreboard players set dummy cartype_generate 7")
        }
        world.setDynamicProperty(messsage, messsage)
        all_player_car.push(messsage)
        world.sendMessage(all_player_car.toString())
    }
    else if (id === "q:select_car" && all_player_car.length > 0) {
        all_player_car = []
        for (let i = 1; i <= max_cartype; i++) {
            var temp = world.getDynamicProperty(i.toString())
            if (all_player_car.includes(temp) == false && temp != 0) {
                world.sendMessage(temp)
                all_player_car.push(world.getDynamicProperty(i.toString()))
            }
        }
        player = world.getAllPlayers()
        world.sendMessage(all_player_car.toString())
        if (all_player_car.length > 0) {
            const form = new ActionFormData()
                .title('Car Category')
                .body('')
            if (all_player_car.includes('1') == true)
                form.button('cartype : 1', 'textures/ui/car/normal_car1_icon')
            if (all_player_car.includes('2') == true)
                form.button('cartype : 2', 'textures/ui/car/normal_car2_icon')
            if (all_player_car.includes('3') == true)
                form.button('cartype : 3', 'textures/ui/car/normal_car3_icon')
            if (all_player_car.includes('4') == true)
                form.button('cartype : 4', 'textures/ui/car/normal_car3_icon')
            if (all_player_car.includes('5') == true)
                form.button('cartype : 5', 'textures/ui/car/normal_car3_icon')
            if (all_player_car.includes('6') == true)
                form.button('cartype : 6', 'textures/ui/car/normal_car3_icon')
            if (all_player_car.includes('7') == true)
                form.button('cartype : 7', 'textures/ui/car/normal_car3_icon')
            form.show(player[0]).then(r => {
                if (r.canceled == true) return
                if (r.selection != null) {
                    player[0].runCommandAsync("execute unless entity @e[tag=Tester] run scoreboard players set dummy cartype_test " + (r.selection + 1).toString())
                    player[0].runCommandAsync("execute unless entity @e[tag=Tester] run function The_Prototype_Test/on_start_test")
                    player[0].runCommandAsync("execute unless entity @e[tag=Tester] run tag @s add Tester")
                    player[0].runCommandAsync("execute unless entity @e[tag=Tester] run camera @a[tag=Tester] fade time 0.5 1 1")
                }
            })
        }
    }
})
world.beforeEvents.itemUse.subscribe((data) => {
    let player = data.source
    const stage = world.scoreboard.getObjective('stage').getScore('dummy')
    if (data.itemStack.typeId == "bridge:car_brochure" && all_player_car.length > 0) system.run(() => main(player))
    else world.sendMessage("show_car_f")
    if (data.itemStack.typeId == "bridge:contract") system.run(() => main1(player))
    function main() {
        all_player_car = []
        for (let i = 1; i <= max_cartype; i++) {
            var temp = world.getDynamicProperty(i.toString())
            if (all_player_car.includes(temp) == false && temp != 0) {
                world.sendMessage(temp)
                all_player_car.push(world.getDynamicProperty(i.toString()))
            }
        }
        if (all_player_car.length > 0) {
            const form = new ActionFormData()
                .title('Car Category')
                .body('')
            if (all_player_car.includes('1') == true)
                form.button('cartype : 1', 'textures/ui/car/normal_car1_icon')
            if (all_player_car.includes('2') == true)
                form.button('cartype : 2', 'textures/ui/car/normal_car2_icon')
            if (all_player_car.includes('3') == true)
                form.button('cartype : 3', 'textures/ui/car/normal_car3_icon')
            if (all_player_car.includes('4') == true)
                form.button('cartype : 4', 'textures/ui/car/normal_car3_icon')
            if (all_player_car.includes('5') == true)
                form.button('cartype : 5', 'textures/ui/car/normal_car3_icon')
            if (all_player_car.includes('6') == true)
                form.button('cartype : 6', 'textures/ui/car/normal_car3_icon')
            if (all_player_car.includes('7') == true)
                form.button('cartype : 7', 'textures/ui/car/normal_car3_icon')
            form.show(player).then(r => {
                if (r.canceled == true) return
                if (r.selection != null) {
                    player.runCommandAsync("execute unless entity @e[tag=Tester] run scoreboard players set dummy cartype_test " + (r.selection + 1).toString())
                    player.runCommandAsync("execute unless entity @e[tag=Tester] run function The_Prototype_Test/on_start_test")
                    player.runCommandAsync("execute unless entity @e[tag=Tester] run tag @s add Tester")
                    player.runCommandAsync("execute unless entity @e[tag=Tester] run camera @a[tag=Tester] fade time 0.5 1 1")
                }
            })
        }
    }
    function main1() {
        if (stage == 1) {
            const form = new ModalFormData()
                .textField('', '(10000$)Sign your name: ' + player.nameTag.toString())
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