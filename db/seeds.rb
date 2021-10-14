# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Spell.destroy_all

# ------- SPELLS -----------

response = RestClient.get('https://api.open5e.com/spells/')

spells_data = JSON.parse(response.body)
spells = spells_data["results"]

spells.each do |spell|
    Spell.create(
        name: spell["name"],
        level: spell["level"],
        higher_level: spell["higher_level"],
        school: spell["school"],
        components: spell["components"],
        ritual: spell["ritual"],
        casting_time: spell["casting_time"],
        concentration: spell["concentration"],
        duration: spell["duration"],
        range: spell["range"],
        class: spell["dnd_class"],
        description: spell["desc"],
        ani: ""
    )
end

# ------- USER ----------
librarian = User.create(username: "MasterLibrarian", password_digest: "mystra")

# -------- GRIMOIRES -------
wizard = Grimoire.create(user_id: librarian.id, title: "Wizard Grimoire", edit: true, image: "https://res.cloudinary.com/djzhu5kfj/image/upload/v1634246544/Flatiron%20-%20Final%20Project/Wizard_Grimoire_xkwy3u.jpg")


# ------- GRIMOIRESPELL ------
# GrimoireSpell.create(grimoire_id: wizard.id, spell_id: )