# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Grimoire.destroy_all
DndClass.destroy_all
Tag.destroy_all
Spell.destroy_all

# ------- USER ----------
librarian = User.create(username: "MasterLibrarian", password: "mystra")

# -------- GRIMOIRES -------
war_grim = Grimoire.create(user_id: librarian.id, title: "Warlock Grimoire", edit: true, image: "https://res.cloudinary.com/djzhu5kfj/image/upload/v1634275592/Flatiron%20-%20Final%20Project/Warlock_Grimoire_oiirir.jpg")

# ------- CLASSES -------
artificer = DndClass.create(name: "artificer")
bard = DndClass.create(name: "bard")
cleric = DndClass.create(name: "cleric")
druid = DndClass.create(name: "druid")
paladin = DndClass.create(name: "paladin")
ranger = DndClass.create(name: "ranger")
sorcerer = DndClass.create(name: "sorcerer")
warlock = DndClass.create(name: "warlock")
wizard = DndClass.create(name: "wizard")

# -------- TAGS ----------
banishment = Tag.create(name: "Banishment")
buff = Tag.create(name: "Buff")
charmed = Tag.create(name: "Charmed")
combat = Tag.create(name: "Combat")
communication = Tag.create(name: "Communication")
compulsion = Tag.create(name: "Compulsion")
control = Tag.create(name: "Control")
creation = Tag.create(name: "Creation")
damage = Tag.create(name: "Damage")
debuff = Tag.create(name: "Debuff")
deception = Tag.create(name: "Deception")
detection = Tag.create(name: "Detection")
dunamancy = Tag.create(name: "Dunamancy")
environment = Tag.create(name: "Environment")
exploration = Tag.create(name: "Exploration")
foreknowledge = Tag.create(name: "Foreknowledge")
healing = Tag.create(name: "Healing")
movement = Tag.create(name: "Movement")
negation = Tag.create(name: "Negation")
psionic = Tag.create(name: "Psionic")
scrying = Tag.create(name: "Scrying")
shapechanging = Tag.create(name: "Shapechanging")
social = Tag.create(name: "Social")
special = Tag.create(name: "Special")
summoning = Tag.create(name: "Summoning")
teleportation = Tag.create(name: "Teleportation")
utility = Tag.create(name: "Utility")
warding = Tag.create(name: "Warding")

# ------- SPELLS -----------
acid_splash = Spell.create(name: "Acid Splash", level: "Cantrip", school: "Conjuration", components: "V,S", ritual: "No", casting_time: "1 Action", concentration: "Not Required", duration: "Instantaneous", range_area: "60 ft.", attack_save: "DEX Save", damage_effect: "Acid", description: "You hurl a bubble of acid. Choose one or two creatures you can see within range. If you choose two, they must be within 5 feet of each other. A target must succeed on a Dexterity saving throw or take 1d6 acid damage.

This spell’s damage increases by 1d6 when you reach 5th level (2d6), 11th level (3d6), and 17th level (4d6).", ani: "")

blade_ward = Spell.create(name: "Blade Ward", level: "Cantrip", school: "Abjuration", components: "V,S", ritual: "No", casting_time: "1 Action", concentration: "Not Required", duration: "1 Round", range_area: "Self", attack_save: "None", damage_effect: "Combat", description: "You extend your hand and trace a sigil of warding in the air. Until the end of your next turn, you have resistance against bludgeoning, piercing, and slashing damage dealt by weapon attacks.", ani: "")

booming_blade = Spell.create(name: "Booming Blade", level: "Cantrip", school: "Evocation", components: "S,M*", ritual: "No", casting_time: "1 Action", concentration: "Not Required", duration: "1 Round", range_area: "Self (5 ft. sphere)", attack_save: "Melee", damage_effect: "Thunder", description: "You brandish the weapon used in the spell’s casting and make a melee attack with it against one creature within 5 feet of you. On a hit, the target suffers the weapon attack’s normal effects and then becomes sheathed in booming energy until the start of your next turn. If the target willingly moves 5 feet or more before then, the target takes 1d8 thunder damage, and the spell ends.

This spell’s damage increases when you reach certain levels. At 5th level, the melee attack deals an extra 1d8 thunder damage to the target on a hit, and the damage the target takes for moving increases to 2d8. Both damage rolls increase by 1d8 at 11th level (2d8 and 3d8) and again at 17th level (3d8 and 4d8).

* - (a melee weapon worth at least 1 sp)", ani: "")

chill_touch = Spell.create(name: "Chill Touch", level: "Cantrip", school: "Necromancy", components: "V,S", ritual: "No", casting_time: "1 action", concentration: "Not Required", duration: "1 Round", range_area: "120 ft.", attack_save: "Ranged", damage_effect: "Necrotic", description: "You create a ghostly, skeletal hand in the space of a creature within range. Make a ranged spell attack against the creature to assail it with the chill of the grave. On a hit, the target takes 1d8 necrotic damage, and it can't regain hit points until the start of your next turn. Until then, the hand clings to the target.

If you hit an undead target, it also has disadvantage on attack rolls against you until the end of your next turn.

This spell's damage increases by 1d8 when you reach 5th level (2d8), 11th level (3d8), and 17th level (4d8).", ani: "")

control_flames = Spell.create(name: "Control Flames", level: "Cantrip", school: "Transmutation", components: "S", ritual: "No", casting_time: "1 Action", concentration: "Not Required", duration: "Instantaneous", range_area: "60 ft. (5 ft. cube)", attack_save: "None", damage_effect: "Control", description: "You choose nonmagical flame that you can see within range and that fits within a 5-foot cube. You affect it in one of the following ways:

* You instantaneously expand the flame 5 feet in one direction, provided that wood or other fuel is present in the new location.

* You instantaneously extinguish the flames within the cube.

* You double or halve the area of bright light and dim light cast by the flame, change its color, or both. The change lasts for 1 hour.

* You cause simple shapes—such as the vague form of a creature, an inanimate object, or a location—to appear within the flames and animate as you like. The shapes last for 1 hour.

If you cast this spell multiple times, you can have up to three of its non-instantaneous effects active at a time, and you can dismiss such an effect as an action.", ani: "")

create_bonfire = Spell.create(name: "Create Bonfire", level: "Cantrip", school: "Conjuration", components: "V,S", ritual: "No", casting_time: "1 Action", concentration: "Required", duration: "1 Minute", range_area: "60 ft. (5 ft. cube)", attack_save: "DEX Save", damage_effect: "Fire", description: "You create a bonfire on ground that you can see within range. Until the spell ends, the magic bonfire fills a 5-foot cube. Any creature in the bonfire’s space when you cast the spell must succeed on a Dexterity saving throw or take 1d8 fire damage. A creature must also make the saving throw when it moves into the bonfire’s space for the first time on a turn or ends its turn there.

The bonfire ignites flammable objects in its area that aren’t being worn or carried.

The spell’s damage increases by 1d8 when you reach 5th level (2d8), 11th level (3d8), and 17th level (4d8).", ani: "")

dancing_lights = Spell.create(name: "Dancing Lights", level: "Cantrip", school: "Evocation", components: "V,S,M*", ritual: "No", casting_time: "1 Action", concentration: "Required", duration: "1 Minute", range_area: "120 ft.", attack_save: "None", damage_effect: "Utility", description: "You create up to four torch-sized lights within range, making them appear as torches, lanterns, or glowing orbs that hover in the air for the duration. You can also combine the four lights into one glowing vaguely humanoid form of Medium size. Whichever form you choose, each light sheds dim light in a 10-foot radius.

As a bonus action on your turn, you can move the lights up to 60 feet to a new spot within range. A light must be within 20 feet of another light created by this spell, and a light winks out if it exceeds the spell's range.

* - (a bit of phosphorus or wychwood, or a glowworm)", ani: "")

druidcraft = Spell.create(name: "Druidcraft", level: "Cantrip", school: "Transmutation", components: "V,S", ritual: "No", casting_time: "1 Action", concentration: "Not Required", duration: "Instantaneous", range_area: "30 ft.", attack_save: "None", damage_effect: "Control", description: "Whispering to the spirits of nature, you create one of the following effects within range:

* You create a tiny, harmless sensory effect that predicts what the weather will be at your location for the next 24 hours. The effect might manifest as a golden orb for clear skies, a cloud for rain, falling snowflakes for snow, and so on. This effect persists for 1 round.
* You instantly make a flower blossom, a seed pod open, or a leaf bud bloom.
* You create an instantaneous, harmless sensory effect, such as falling leaves, a puff of wind, the sound of a small animal, or the faint odor of skunk. The effect must fit in a 5-foot cube.
* You instantly light or snuff out a candle, a torch, or a small campfire.", ani: "")

eldritch_blast = Spell.create(name: "Eldritch Blast", level: "Cantrip", school: "Evocation", components: "V,S", ritual: "No", casting_time: "1 Action", concentration: "Not Required", duration: "Instantaneous", range_area: "120 ft.", attack_save: "Ranged", damage_effect: "Force", description: "A beam of crackling energy streaks toward a creature within range. Make a ranged spell attack against the target. On a hit, the target takes 1d10 force damage.

The spell creates more than one beam when you reach higher levels: two beams at 5th level, three beams at 11th level, and four beams at 17th level. You can direct the beams at the same target or at different ones. Make a separate attack roll for each beam.", ani: "https://res.cloudinary.com/djzhu5kfj/video/upload/v1635358157/Flatiron%20-%20Final%20Project/Eldritch_blast_v6wojy.mp4")

guidance = Spell.create(name: "Guidance", level: "Cantrip", school: "Divination", components: "V,S", ritual: "No", casting_time: "1 Action", concentration: "Required", duration: "1 Minute", range_area: "Touch", attack_save: "None", damage_effect: "Buff", description: "You touch one willing creature. Once before the spell ends, the target can roll a d4 and add the number rolled to one ability check of its choice. It can roll the die before or after making the ability check. The spell then ends.", ani: "")

mending = Spell.create(name: "Mending", level: "Cantrip", school: "Transmutation", components: "V,S,M*", ritual: "No", casting_time: "1 Minute", concentration: "Not Required", duration: "Instantaneous", range_area: "Touch", attack_save: "None", damage_effect: "Utility", description: "This spell repairs a single break or tear in an object you touch, such as a broken chain link, two halves of a broken key, a torn cloak, or a leaking wineskin. As long as the break or tear is no larger than 1 foot in any dimension, you mend it, leaving no trace of the former damage.

This spell can physically repair a magic item or construct, but the spell can't restore magic to such an object.

* - (two lodestones)", ani: "")

detect_magic = Spell.create(name: "Detect Magic", level: "1st", school: "Divination", components: "V,S", ritual: "Yes", casting_time: "1 Action", concentration: "Required", duration: "10 Minutes", range_area: "Self (30 ft. sphere)", attack_save: "None", damage_effect: "Detection", description: "For the duration, you sense the presence of magic within 30 feet of you. If you sense magic in this way, you can use your action to see a faint aura around any visible creature or object in the area that bears magic, and you learn its school of magic, if any.

The spell can penetrate most barriers, but it is blocked by 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt.", ani: "")

feather_fall = Spell.create(name: "Feather Fall", level: "1st", school: "Transmutation", components: "V,M**", ritual: "No", casting_time: "1 Reaction*", concentration: "Not Required", duration: "1 Minute", range_area: "60 ft.", attack_save: "None", damage_effect: "Exploration", description: "Choose up to five falling creatures within range. A falling creature's rate of descent slows to 60 feet per round until the spell ends. If the creature lands before the spell ends, it takes no falling damage and can land on its feet, and the spell ends for that creature.

* - which you take when you or a creature within 60 feet of you falls
** - (a small feather or piece of down)", ani: "")

witch_bolt = Spell.create(name: "Witch Bolt", level: "1st", school: "Evocation", components: "V,S,M*", ritual: "No", casting_time: "1 Action", concentration: "Required", duration: "1 Minute", range_area: "30 ft.", attack_save: "Ranged", damage_effect: "Lightning", description: "A beam of crackling, blue energy lances out toward a creature within range, forming a sustained arc of lightning between you and the target. Make a ranged spell attack against that creature. On a hit, the target takes 1d12 lightning damage, and on each of your turns for the duration, you can use your action to deal 1d12 lightning damage to the target automatically. The spell ends if you use your action to do anything else. The spell also ends if the target is ever outside the spell’s range or if it has total cover from you.

    At Higher Levels. When you cast this spell using a spell slot of 2nd level or higher, the initial damage increases by 1d12 for each slot level above 1st.
    
    * - (a twig from a tree that has been struck by lightning)", ani: "")

# acid_splash = Spell.create(name: "", level: "", school: "", components: "", ritual: "", casting_time: "", concentration: "", duration: "", range_area: "", attack_save: "", damage_effect: "", description: "", ani: "")

# ------ SPELLTAGS/CLASS SPELLS --------
acid_splash.tags = [damage]
acid_splash.dnd_classes = [sorcerer, wizard, artificer]

blade_ward.tags = [combat, warding]
blade_ward.dnd_classes = [sorcerer, wizard, warlock, bard]

booming_blade.tags = [damage, control, combat]
booming_blade.dnd_classes = [sorcerer, wizard, artificer, warlock]

chill_touch.tags = [damage]
chill_touch.dnd_classes = [sorcerer, wizard, warlock]

control_flames.tags = [control]
control_flames.dnd_classes = [sorcerer, wizard, druid]

create_bonfire.tags = [damage, control]
create_bonfire.dnd_classes = [druid, sorcerer, wizard, warlock, artificer]

dancing_lights.tags = [utility]
dancing_lights.dnd_classes = [bard, sorcerer, wizard, artificer]

druidcraft.tags = [control]
druidcraft.dnd_classes = [druid]

eldritch_blast.tags = [damage]
eldritch_blast.dnd_classes = [warlock]

guidance.tags = [buff]
guidance.dnd_classes = [druid, cleric, artificer]

mending.tags = [utility]
mending.dnd_classes = [bard, cleric, druid, sorcerer, wizard, artificer]

detect_magic.tags = [detection]
detect_magic.dnd_classes = [bard, cleric, druid, paladin, ranger,sorcerer, wizard, artificer]

feather_fall.tags = [utility, exploration]
feather_fall.dnd_classes = [bard, sorcerer, wizard, artificer]

witch_bolt.tags = [damage]
witch_bolt.dnd_classes = [sorcerer, wizard, warlock]

# .tags = [damage]
# .dnd_classes = [sorcerer, wizard, artificer]

# ------ GRIMOIRESPELLS ---------
war_grim.added_spells = [blade_ward, booming_blade, chill_touch, create_bonfire, eldritch_blast, witch_bolt]