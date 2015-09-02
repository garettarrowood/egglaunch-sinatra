letsdothis = Team.create(name: "Watch the egg FLY!!", email: "wouldntyou@know.edu")
imconfused = Team.create(name: "Watch the egg DIVE!!", email: "egg@time.now")
teamegg = Team.create(name: "TEAM EGG!", email: "eggs@eggs.eggs")

rule1 = Rule.create(content: "Must carry egg")
rule2 = Rule.create(content: "Must be brown eggs")
rule3 = Rule.create(content: "Must travel at least 10 feet", affirmed?: true)
rule4 = Rule.create(content: "Egg must not crack on landing", affirmed?: true)

crazybob = Member.create(name: "Bob", email: "lick@lick.org")
crazyliz = Member.create(name: "Liz", email: "tick@tick.org")
crazytim = Member.create(name: "Tim", email: "quick@quick.org")

letsdothis.members << crazybob
imconfused.members << [crazytim, crazyliz]

opinion1 = Rule_vote.create(yes?: true, rule_id: rule1.id, team_id: letsdothis.id)
opinion2 = Rule_vote.create(yes?: false, rule_id: rule1.id, team_id: imconfused.id)
opinion3 = Rule_vote.create(yes?: false, rule_id: rule1.id, team_id: teamegg.id)
opinion4 = Rule_vote.create(yes?: true, rule_id: rule2.id, team_id: letsdothis.id)
opinion5 = Rule_vote.create(yes?: true, rule_id: rule2.id, team_id: imconfused.id)
