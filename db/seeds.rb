puts "Cleaning database..."
Message.destroy_all
Chatroom.destroy_all
User.destroy_all
Band.destroy_all
Style.destroy_all
Instrument.destroy_all

puts "Creating styles..."
metal = Style.create!(name: "metal")
punk = Style.create!(name: "punk")
alternative = Style.create!(name: "alternative")
grunge = Style.create!(name: "grunge")
hard = Style.create!(name: "hard-rock")
symphonic = Style.create!(name: "symphonic")
country = Style.create!(name: "country")
rock = Style.create!(name: "rock")

puts "Creating Instruments..."
guitar = Instrument.create!(name: "guitar")
drums = Instrument.create!(name: "drums")
piano = Instrument.create!(name: "piano")
vocal = Instrument.create!(name: "vocal")
bass = Instrument.create!(name: "bass")
keyboard = Instrument.create!(name: "keyboard")
bagpipe = Instrument.create!(name: "bagpipe")
other = Instrument.create!(name: "other")

puts "Creating bands..."
tenacious = Band.create!(
  name: "Tenacious D",
  bio: "We're Tenacious D, the dynamic musical duo that brings the rock and laughs!
  Comprised of Jack Black and Kyle Gas, we joined forces to conquer the world with our comedic rock tunes.
  With killer guitars, epic vocals, and hilarious lyrics, we're here to rock your socks off and make you laugh till you cry!",
  city: "Nantes",
  style: rock,
  needed_instrument_id: drums.id,
  video_url: "https://www.youtube.com/embed/Sfz9jQ3KI5k"
)
file = File.open(Rails.root.join("app/assets/images/Tenacious-D band.jpeg"))
tenacious.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/tenacious_avatar.jpeg"))
tenacious.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

steve = Band.create!(
  name: "Steve 'N' Seagulls",
  bio: "Hey there, we're Steve 'N' Seagulls, the wild and wacky bluegrass band!
  Hailing from Finland, we put a crazy twist on rock and metal classics.
  With banjos, accordions, and a whole lot of energy, we've taken the world by storm.
  Get ready for a foot-stomping, head-banging good time with Steve 'N' Seagulls!",
  city: "Le Mans",
  style: country,
  needed_instrument_id: keyboard.id,
  video_url: "https://www.youtube.com/embed/9i4LBeT9IBQ"
)
file = File.open(Rails.root.join("app/assets/images/SteveNSeagulls - Moyenne.jpeg"))
steve.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/stevens_avatar.jpeg"))
steve.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

zz = Band.create!(
  name: "ZZ Top",
  bio: "We're ZZ Top, the baddest blues rock trio in town! With Billy Gibbons on guitar,
  Dusty Hill on bass, and Frank Beard on drums, we've been shredding stages since the '70s.
  From our signature beards to our infectious riffs, we've become legends of rock,
  delivering timeless hits and keeping the party going.",
  city: "Angers",
  style: country,
  needed_instrument_id: guitar.id,
  video_url: "https://www.youtube.com/embed/Gg9cNGHl-bg"
)
file = File.open(Rails.root.join("app/assets/images/zztop - Grande.jpeg"))
zz.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/zztop-avatar.jpeg"))
zz.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

pearl = Band.create!(
  name: "Pearl Jam",
  bio: "Pearl Jam, the iconic grunge band, came to life in Seattle in the early 1990s.
  As the bassist, I, Jeff Ament, helped shape our signature sound. With Eddie Vedder's powerful vocals and our collective energy,
  we created music that spoke to the hearts of millions. Through ups and downs,
  Pearl Jam remains a voice for change and a force for unity.",
  city: "Le Mans",
  style: grunge,
  needed_instrument_id: drums.id,
  video_url: "https://www.youtube.com/embed/qM0zINtulhM"
)
file = File.open(Rails.root.join("app/assets/images/PearlJam.jpeg"))
pearl.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/pearljam-avatar.jpeg"))
pearl.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")


arctic = Band.create!(
  name: "Arctic Monkeys",
  bio: "We're Arctic Monkeys, a British rock band that's all about delivering raw energy and infectious hooks.
  From Sheffield, we burst onto the scene with our debut album, 'Whatever People Say I Am, That's What I'm Not.'
  Since then, we've evolved and explored new sounds, always staying true to our indie roots. Let the music roar!",
  city: "Angers",
  style: rock,
  needed_instrument_id: bass.id,
  video_url: "https://www.youtube.com/embed/KQsrIxyoJdE"
)
file = File.open(Rails.root.join("app/assets/images/arctic-monkeys-1.jpeg"))
arctic.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/arcticmonkeys-avatar.jpeg"))
arctic.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

noirdesir = Band.create!(
  name: "Noir Désir",
  bio: "Noir Désir, the influential French rock band, was my creative outlet as Jean-Paul Roy.
  Through my passionate vocals and poetic lyrics, we pushed boundaries and addressed societal issues.
  Our intense sound and energetic performances captured the hearts of fans.
  Despite challenges, Noir Désir's legacy as a musical force continues to resonate and inspire.",
  city: "Nantes",
  style: grunge,
  needed_instrument_id: keyboard.id,
  video_url: "https://www.youtube.com/embed/NrgcRvBJYBE"
)
file = File.open(Rails.root.join("app/assets/images/NOIRDESIR.jpeg"))
noirdesir.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/noirdesir-avatar.jpeg"))
noirdesir.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

bmth = Band.create!(
  name: "Bring Me The Horizon",
  bio: "We are Bring Me The Horizon, a British rock band formed in Sheffield in 2004.
  We blend various genres like metalcore, rock, and electronic music to create our unique sound.
  With powerful lyrics and intense performances, we strive to push boundaries and challenge the status quo.
  We've released several critically acclaimed albums and continue to evolve as artists,
  always exploring new territories and connecting with our fans around the world.",
  city: "Nantes",
  style: metal,
  needed_instrument_id: bass.id,
  video_url: "https://www.youtube.com/embed/racmy7Y9P4M"
)
file = File.open(Rails.root.join("app/assets/images/bmth-1.jpeg"))
bmth.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/bmth-avatar.jpeg"))
bmth.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

shikari = Band.create!(
  name: "Enter Shikari",
  bio: "We are Enter Shikari, a British rock band formed in 2003. Blending elements of rock,
  electronic, and post-hardcore, we create a sonic fusion that defies genre boundaries.
  Through our passionate lyrics and energetic performances, we aim to challenge social norms and inspire change.
  With a loyal and diverse fanbase, we continue to push the boundaries of our music and deliver a powerful live experience.",
  city: "Nantes",
  style: metal,
  needed_instrument_id: drums.id,
  video_url: "https://www.youtube.com/embed/P4MiC67seUY"
)
file = File.open(Rails.root.join("app/assets/images/enter-shikari-2.jpeg"))
shikari.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/shikari-avatar.jpeg"))
shikari.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

pilots = Band.create!(
  name: "Twenty One Pilots",
  bio: "We are Twenty One Pilots, a musical duo formed in 2009. Our music is a fusion of various genres,
  including alternative rock, pop, and hip-hop. Through our introspective lyrics and energetic performances,
  we aim to connect with listeners on a deep and personal level. We strive to inspire hope, address mental health issues,
  and create a sense of unity among our diverse fanbase worldwide.",
  city: "Nantes",
  style: alternative,
  needed_instrument_id: guitar.id,
  video_url: "https://www.youtube.com/embed/pXRviuL6vMY"
)
file = File.open(Rails.root.join("app/assets/images/twenty-one-pilots-1.jpeg"))
pilots.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/21pilots-avatar.jpeg"))
pilots.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

death = Band.create!(
  name: "DeathByRomy",
  bio: "We are Death By Romy. Our music is a blend of dark pop, alternative R&B, and electronic elements.
  Through haunting melodies and raw lyrics, we explore themes of love, pain, and self-discovery. With my unique sound
  and personal storytelling, we aim to connect with listeners on a deep emotional level,
  offering solace and empowerment through music.",
  city: "Nantes",
  style: alternative,
  needed_instrument_id: bass.id,
  video_url: "https://www.youtube.com/embed/JsvlM8QGY7M"
)
file = File.open(Rails.root.join("app/assets/images/death-by-romy-1.jpeg"))
death.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/deathbyromy-avatar.jpeg"))
death.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

kiss = Band.create!(
  name: "Kiss",
  bio: "As a member of KISS, let me take you on a wild ride through rock 'n' roll history.
  We are the gods of thunder, the kings of glam, and the masters of spectacle.
  With face paint and pyrotechnics, we've rocked arenas with anthems like 'Rock and Roll All Nite.'
  KISS is not just a band, it's a rock 'n' roll phenomenon that will echo through eternity.",
  city: "Le Mans",
  style: hard,
  needed_instrument_id: drums.id,
  video_url: "https://www.youtube.com/embed/ZhIsAZO5gl0"

)
file = File.open(Rails.root.join("app/assets/images/kiss.jpeg"))
kiss.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/kiss-avatar.jpeg"))
kiss.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

greta = Band.create!(
  name: "Greta Van Fleet",
  bio: "Welcome to the world of Greta Van Fleet, where the spirit of classic rock lives on!
  We are the young rockers bringing a modern twist to the golden age.
  With soulful vocals, blistering guitar riffs, and thunderous drums, we've captured the essence of bands like Led Zeppelin.
  Greta Van Fleet is here to keep the flame of rock 'n' roll burning bright for generations to come!",
  city: "Nantes",
  style: hard,
  needed_instrument_id: keyboard.id,
  video_url: "https://www.youtube.com/embed/aJg4OJxp-co"

)
file = File.open(Rails.root.join("app/assets/images/greta.jpeg"))
greta.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/greta-avatar.jpeg"))
greta.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

mode = Band.create!(
  name: "Depeche Mode",
  bio: "We are Depeche Mode, a British electronic band formed in 1980. With our blend of synth-pop and alternative rock,
  we've carved a unique place in music history. Through introspective lyrics and atmospheric soundscapes, we've explored themes of love,
  desire, and personal introspection. Our music continues to resonate with fans worldwide, making an enduring impact
  on the electronic music landscape.",
  city: "Angers",
  style: alternative,
  needed_instrument_id: keyboard.id,
  video_url: "https://www.youtube.com/embed/aGSKrC7dGcY"
)
file = File.open(Rails.root.join("app/assets/images/Depeche-Mode-1.jpeg"))
mode.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/depeche-avatar.jpeg"))
mode.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

omens = Band.create!(
  name: "Bad Omens",
  bio: "We are Bad Omens, a rock band on a mission to create powerful and emotive music. With a blend of heavy riffs,
  melodic hooks, and introspective lyrics, we explore themes of personal struggle, growth, and resilience.
  Through our music, we aim to connect with listeners, sharing a cathartic experience and inspiring them to find strength
  in their own journeys.",
  city: "Nantes",
  style: metal,
  needed_instrument_id: bagpipe.id,
  video_url: "https://www.youtube.com/embed/Aibxit_PpAg"
)
file = File.open(Rails.root.join("app/assets/images/Bad-Omens-1.jpeg"))
omens.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/omens-logo.jpeg"))
omens.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

dress = Band.create!(
  name: "Static Dress",
  bio: "We are Static Dress, a post-hardcore band fueled by raw emotion and unapologetic energy. With a blend of aggressive
  riffs, atmospheric soundscapes, and passionate vocals, we create a sonic journey that delves into personal struggles and growth.
  Through our music, we aim to inspire and connect with listeners, leaving a lasting impression.",
  city: "Angers",
  style: metal,
  needed_instrument_id: drums.id,
  video_url: "https://www.youtube.com/embed/19PZWrbr_7U"
)
file = File.open(Rails.root.join("app/assets/images/Static-Dress-1.jpeg"))
dress.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/dress-avatar.jpeg"))
dress.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

sexpistols = Band.create!(
  name: "Sex Pistols",
  bio: "The iconic punk rock band, shook the music world in the late 1970s.
  With Johnny Rotten's snarling vocals and our explosive energy, we unleashed a rebellious spirit that challenged the status quo.
  Through our raw and confrontational music, we became the voice of a disenchanted generation, leaving an indelible mark on punk rock history.",
  city: "Le Mans",
  style: punk,
  needed_instrument_id: bass.id,
  video_url: "https://www.youtube.com/embed/yqrAPOZxgzU"
)
file = File.open(Rails.root.join("app/assets/images/Sex-Pistols.jpeg"))
sexpistols.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/sexpistols-avatar.jpeg"))
sexpistols.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

nirvana = Band.create!(
  name: "Nirvana",
  bio: "Nirvana, the groundbreaking band fronted by Kurt Cobain, reshaped the music landscape in the early 1990s.
  With Dave Grohl's explosive drumming and Krist Novoselic's driving bass lines, we crafted a raw and emotive sound.
  From 'Smells Like Teen Spirit' to 'Come As You Are,' our songs captured a generation's angst and propelled alternative
  rock into the mainstream, forever defining a musical era.",
  city: "Nantes",
  style: grunge,
  needed_instrument_id: vocal.id,
  video_url: "https://www.youtube.com/embed/YQfkm4Vp-1o"
)
file = File.open(Rails.root.join("app/assets/images/nirvana.jpeg"))
nirvana.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/nirvana-avatar.jpeg"))
nirvana.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

theoffspring = Band.create!(
  name: "The Offspring",
  bio: "Since our formation in the 1980s, we've been serving up high-energy anthems like 'Self Esteem' and 'Pretty Fly (For a White Guy)'.
  With a blend of catchy hooks and socially conscious lyrics, we've become a voice for the disenchanted, inspiring generations of fans worldwide.",
  city: "Nantes",
  style: punk,
  needed_instrument_id: bass.id,
  video_url: "https://www.youtube.com/embed/7iNbnineUCI"
)
file = File.open(Rails.root.join("app/assets/images/The_Offspring-stage.jpeg"))
theoffspring.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/offspring-avatar.jpeg"))
theoffspring.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

falling = Band.create!(
  name: "Falling in Reverse",
  bio: "We are Falling In Reverse, a post-hardcore band driven by raw emotion and unapologetic energy. With a blend of heavy riffs,
  catchy hooks, and introspective lyrics, we create a sonic journey that explores personal struggles, redemption, and self-discovery.
  Through our music, we aim to connect with listeners, inspiring them to overcome adversity and find hope in the darkest moments.",
  city: "Angers",
  style: metal,
  needed_instrument_id: bass.id,
  video_url: "https://www.youtube.com/embed/qMXESlny4-I"
)
file = File.open(Rails.root.join("app/assets/images/falling-in-reverse2 - Grande.jpeg"))
falling.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/falling-avatar.jpeg"))
falling.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

spirit = Band.create!(
  name: "Spirit Box",
  bio: "We are Spiritbox, a progressive metal band pushing the boundaries of heavy music. With haunting melodies,
  crushing riffs, and ethereal vocals, we create a sonic experience that defies genre conventions. Through our introspective and
  emotive lyrics, we explore themes of inner turmoil, personal growth, and the human condition. We strive to connect with listeners
  on a profound and visceral level, inviting them into our sonic world.",
  city: "Nantes",
  style: metal,
  needed_instrument_id: drums.id,
  video_url: "https://www.youtube.com/embed/rJticAP6hD8"
)
file = File.open(Rails.root.join("app/assets/images/Spiritbox-3 - Grande.jpeg"))
spirit.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/spirit-avatar.jpeg"))
spirit.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

motionless = Band.create!(
  name: "Motionless in White",
  bio: "We are Motionless In White, a gothic metalcore band known for our dark and intense sound. With a fusion of heavy riffs,
  melodic hooks, and haunting lyrics, we explore themes of darkness, individuality, and personal struggles. Through our music,
  we aim to create an immersive and cathartic experience, connecting with fans who resonate with our unique blend of heaviness and melody.",
  city: "Nantes",
  style: metal,
  needed_instrument_id: keyboard.id,
  video_url: "https://www.youtube.com/embed/B3faYe5V4Sk"
)
file = File.open(Rails.root.join("app/assets/images/Motionless-In-Whited - Grande.jpeg"))
motionless.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/motion-avatar.jpeg"))
motionless.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

nightwish = Band.create!(
  name: "nightwish",
  bio: "Welcome to the world of Nightwish, where dreams and melodies intertwine! We are a symphonic metal powerhouse,
  blending soaring vocals, powerful guitars, enchanting keyboards, and thunderous drums.
  With our epic compositions and captivating storytelling, we transport audiences to realms both mystical and emotional.
  Join us on this musical odyssey of passion, imagination, and sonic grandeur!",
  city: "Angers",
  style: symphonic,
  needed_instrument_id: guitar.id,
  video_url: "https://www.youtube.com/embed/TM23gaT4zkY"
)
file = File.open(Rails.root.join("app/assets/images/nightwish 2.jpeg"))
nightwish.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/nightwish-avatar.jpeg"))
nightwish.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

epica = Band.create!(
  name: "Epica",
  bio: "Step into the world of Epica, where symphonic metal reigns supreme!
  We are the masters of blending operatic vocals, crushing guitars, and grand orchestrations.
  With our intense melodies and thought-provoking lyrics, we embark on epic musical adventures
  that traverse emotions and dimensions. Join us as we push the boundaries of metal with our symphonic symphony!",
  city: "Nantes",
  style: symphonic,
  needed_instrument_id: bagpipe.id,
  video_url: "https://www.youtube.com/embed/7imPLmvLyQA"
)
file = File.open(Rails.root.join("app/assets/images/epica.jpeg"))
epica.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/epica-avatar.jpeg"))
epica.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

time = Band.create!(
  name: "Time for Energy",
  bio: "We are Time for Energy, a group of passionate musicians who live and breathe music.
  Our boundless creativity and shared love for sonic innovation drive us to constantly push boundaries and redefine genres.
  When we hit the stage, our captivating performances ignite a fire in the hearts of our listeners,
  leaving them energized and hungry for more. Time for Energy is the embodiment of our musical vitality and pure sonic bliss.",
  city: "Nantes",
  style: metal,
  needed_instrument_id: bagpipe.id,
  video_url: "https://www.youtube.com/embed/r_rrvfg3M5w"
)
file = File.open(Rails.root.join("app/assets/images/TimeForEnergy.jpeg"))
time.photo.attach(io: file, filename: "band.jpeg", content_type: "image/jpeg")
file_avatar = File.open(Rails.root.join("app/assets/images/timeforenergy-avatar.jpeg"))
time.avatar.attach(io: file_avatar, filename: "avatar_band.jpeg", content_type: "image/jpeg")

puts "Bandz created"

puts "Creating users..."

black = User.create!(last_name: "Black", first_name: "Jack",
email: "black@email.com", password: "azerty", bio: "Yo, I'm Jack Black, the rockin' sensation!
Born on August 28, 1969, in Santa Monica, California,
I'm an American actor, comedian, and musician. I'm the frontman of the legendary comedic rock duo,
Tenacious D. From belting out killer tunes to slaying audiences on the big screen,
I'm here to rock your world!", city: "Montcuq", instrument: vocal, style: rock, band: tenacious, )
file = File.open(Rails.root.join("app/assets/images/Jack Black.jpeg"))
black.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

gass = User.create!(last_name: "Gass", first_name: "Kyle",
email: "gass@email.com", password: "azerty", bio: "
Hey there, it's Kyle Gass, rockin' and rollin' alongside my partner Jack Black!
Born on July 23, 1960, I'm the guitar-wielding half of the legendary Tenacious D.
With my sweet riffs and soulful harmonies, I bring the rock 'n' roll magic to our comedic duo.
Get ready for some serious musical awesomeness!", city: "Montcuq", instrument: guitar, style: rock, band: tenacious)
file = File.open(Rails.root.join("app/assets/images/Kyle Gass.jpeg"))
gass.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

remmel = User.create!(last_name: "Remmel", first_name: "Steve",
email: "remmel@email.com", password: "azerty", bio: "
Hey, I'm Remmel, and I'm here to bring the groove! Born with rhythm in my bones,
I'm a passionate musician and producer. From crafting infectious beats to creating soulful melodies,
music is my language. With each track, I strive to transport listeners to a world of pure musical bliss.
Let's vibe together!", city: "Montcuq", instrument: vocal, style: rock, band: steve)

file = File.open(Rails.root.join("app/assets/images/Remmel.jpeg"))
remmel.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

herman = User.create!(last_name: "Herman", first_name: "Steve",
email: "herman@email.com", password: "azerty", bio: "Hey, I'm Herman from Steve 'N' Seagulls, the Finnish bluegrass maniacs!
With my trusty banjo in hand, I bring the twang and the energy to our wild performances.
From rural Finland to global stages, I'm living the dream, jamming with my crazy talented bandmates and making audiences go nuts.
Let's pick and grin together!", city: "Montcuq", instrument: guitar, style: rock, band: steve)

file = File.open(Rails.root.join("app/assets/images/Hermann.jpeg"))
herman.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

skubu = User.create!(last_name: "Skubu", first_name: "Steve",
  email: "skubu@email.com", password: "azerty", bio: "Hey there, I'm Skubu, the fiddle maestro of Steve 'N' Seagulls!
With my strings in motion, I add a touch of fiery folk to our rockin' bluegrass sound.
From Finland to the world, I'm living my musical passion, creating infectious melodies that make hearts dance.
Let's get down and embrace the fiddle frenzy!", city: "Montcuq", instrument: drums, style: rock, band: steve)

file = File.open(Rails.root.join("app/assets/images/skubu - Grande.jpeg"))
skubu.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

jamppa = User.create!(last_name: "Jamppa", first_name: "Steve",
  email: "jamppa@email.com", password: "azerty", bio: "Hey, it's Jamppa from Steve 'N' Seagulls, the rockin' bassist!
I lay down the low-end grooves that make your feet move.
From Finland's countryside to international stages, I bring the thunder and keep the rhythm tight.
With every note, I strive to create a musical experience that resonates deep within.
Let's rock together!", city: "Montcuq", instrument: drums, style: rock, band: steve)

file = File.open(Rails.root.join("app/assets/images/jamppa - Grande.jpeg"))
jamppa.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

beard = User.create!(last_name: "Beard", first_name: "Franck",
  email: "beard@email.com", password: "azerty", bio: "Hey, I'm Frank Beard, the rhythm powerhouse of ZZ Top!
As the drummer, I bring the beats that make you move.
With a career spanning decades, I've laid down the groove for countless iconic tracks.
From blues to rock, my passion for music drives me to keep the rhythm tight and the crowd groovin'!",
city: "Montcuq", instrument: drums, style: rock, band: zz)

file = File.open(Rails.root.join("app/assets/images/beard - Grande.jpeg"))
beard.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

gibbons = User.create!(last_name: "Gibbons", first_name: "Billy",
email: "gibbons@email.com", password: "azerty", bio: "Hey, it's Billy Gibbons, the guitar-slingin' bluesman of ZZ Top!
With my trusty guitar and signature growling vocals, I've been crafting gritty, bluesy riffs for decades.
From Texas to the world, I've poured my soul into every note, creating a sound that's unmistakably ZZ Top.
Let's keep that Texas boogie alive!",
city: "Montcuq", instrument: guitar, style: rock, band: zz)

file = File.open(Rails.root.join("app/assets/images/gibbons - Grande.jpeg"))
gibbons.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

ament = User.create!(last_name: "Ament", first_name: "Jeff",
email: "Ament@email.com", password: "azerty", bio: "Ament Jeff, the creative force behind many influential grunge bands,
including Pearl Jam. As a bassist and songwriter, I've helped shape the sound that defined a generation.
With introspective lyrics and melodic bass lines, my music reflects my journey through life's highs and lows.
A passionate advocate for social change, I strive to make a lasting impact through my art.",
  city: "Montcuq", instrument: bass, style: rock, band: pearl)

file = File.open(Rails.root.join("app/assets/images/Jeff-Ament-PEARLJAM.jpeg"))
ament.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

gossard = User.create!(last_name: "Gossard", first_name: "Stone",
email: "Gossard@email.com", password: "azerty", bio: "Hey there, I'm Stone Gossard, a driving force in the grunge scene,
I have left an indelible mark on rock music. As a guitarist and songwriter,
I've woven melodic and introspective elements into the fabric of bands like Pearl Jam. Through raw emotion and infectious riffs,
I've aimed to connect with listeners and create a lasting musical legacy.",
city: "Montcuq", instrument: guitar, style: rock, band: pearl)

file = File.open(Rails.root.join("app/assets/images/Stone-Gossard-PEARLJAM.jpeg"))
gossard.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

mccready = User.create!(last_name: "Mccready", first_name: "Mike",
email: "mccready@email.com", password: "azerty", bio: "I'm the soulful guitarist of various grunge bands,
i had etched my name in the annals of rock history. With my searing solos and heartfelt melodies,
I've contributed to the sonic tapestry of Pearl Jam and beyond. Through music, I've channeled my struggles and triumphs,
forging a connection with fans worldwide.",
city: "Montcuq", instrument: guitar, style: rock, band: pearl)

file = File.open(Rails.root.join("app/assets/images/Mike-McCready-PEARLJAM.jpeg"))
mccready.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

turner = User.create!(last_name: "Turner", first_name: "Alex",
email: "turner@email.com", password: "azerty", bio: "Hey, it's Alex Turner, the frontman of Arctic Monkeys.
With my guitar in hand and lyrics in my soul, I've been crafting stories and melodies that resonate with fans worldwide.
From Sheffield to global stages, I've embraced growth and experimentation,
always striving to push boundaries and connect through music. Let's keep the Arctic Monkeys' legacy alive!",
city: "Montcuq", instrument: vocal, style: rock, band: arctic)

file = File.open(Rails.root.join("app/assets/images/turner - Grande.jpeg"))
turner.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

cook = User.create!(last_name: "Cook", first_name: "Jamie",
email: "cook@email.com", password: "azerty", bio: "Hey there, it's Jamie Cook, the guitar wizard of Arctic Monkeys!
With my six strings, I weave intricate melodies and add sonic layers to our music.
From our humble beginnings in Sheffield to conquering stages worldwide,
I've been dedicated to crafting unique guitar sounds that define our sound.
Let's keep the riffs rolling!",
city: "Montcuq", instrument: guitar, style: rock, band: arctic)

file = File.open(Rails.root.join("app/assets/images/cook - Grande.jpeg"))
cook.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

helders = User.create!(last_name: "Helders", first_name: "Matt",
email: "helders@email.com", password: "azerty", bio: "Hey, I'm Matt Helders, the rhythm powerhouse of Arctic Monkeys!
With my drums and beats, I set the foundation for our sound.
From Sheffield to global arenas, I've been laying down the grooves that get crowds moving.
With each album, I evolve my style, always driving the Arctic Monkeys' sound forward. Let's keep the rhythm alive!",
city: "Montcuq", instrument: drums, style: rock, band: arctic)

file = File.open(Rails.root.join("app/assets/images/helders - Grande.jpeg"))
helders.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

roy = User.create!(last_name: "Roy", first_name: "Jean-Paul",
email: "Roy@email.com", password: "azerty", bio: "Jean-Paul Roy, a talented musician and songwriter,
has made a profound impact on the French music scene. With introspective lyrics and soulful melodies,
I've crafted songs that delve into the depths of human emotions. Through my heartfelt performances,
I aim to connect with listeners on a profound level and leave a lasting musical legacy.",
city: "Montcuq", instrument: bass, style: rock, band: noirdesir)

file = File.open(Rails.root.join("app/assets/images/Jean-paul-roy-NOIRDESIR.jpeg"))
roy.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

teyssotgay = User.create!(last_name: "Teyssot-Gay", first_name: "
Serge",
email: "teyssotgay@email.com", password: "azerty", bio: "Serge Teyssot-Gay, a boundary-pushing guitarist,
has been a driving force in the French music scene. Known for his innovative style and emotive playing,
he has collaborated with diverse artists, pushing the boundaries of rock, jazz, and world music.
Through his intricate compositions, Serge weaves sonic landscapes that captivate and inspire audiences worldwide.",
city: "Montcuq", instrument: drums, style: rock, band: noirdesir)

file = File.open(Rails.root.join("app/assets/images/Serge-Teyssot-Gay-NOIRDESIR.jpeg"))
teyssotgay.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

sykes = User.create!(last_name: "Sykes", first_name: "Oliver",
email: "sykes@email.com", password: "azerty", bio: "I'm Oliver Sykes, a musician and the lead vocalist of Bring Me The Horizon.
Born and raised in England, I found my passion for music at a young age. Through my journey with the band,
I've expressed my emotions and personal experiences through intense lyrics and energetic performances.
I continue to evolve as an artist, inspiring others to embrace their individuality and overcome adversity.",
city: "Montcuq", instrument: vocal, style: rock, band:  bmth)

file = File.open(Rails.root.join("app/assets/images/oliver-sykes-bmth.jpeg"))
sykes.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

fish = User.create!(last_name: "Fish", first_name: "Jordan",
email: "fish@email.com", password: "azerty", bio: "I'm Jordan Fish, a musician and the keyboardist/synth player of Bring Me The Horizon.
Joining the band in 2012, I've contributed to our evolution, infusing electronic elements into our sound.
Through my compositions and production work, I strive to create atmospheric and experimental textures that push the boundaries of our music.
Together, we're constantly exploring new sonic territories and captivating audiences worldwide.",
city: "Montcuq", instrument: keyboard, style: rock, band: bmth)

file = File.open(Rails.root.join("app/assets/images/Jordan_Fish_bmth.jpeg"))
fish.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

malia = User.create!(last_name: "Malia", first_name: "Lee",
email: "malia@email.com", password: "azerty", bio: "I'm Lee Malia, the guitarist of Bring Me The Horizon.
From a young age, I fell in love with the power of guitar-driven music. With Bring Me The Horizon,
I've had the privilege of crafting heavy riffs and melodic solos that resonate with our fans.
I strive to bring a unique energy to our sound, combining aggression and melody to create something truly captivating.",
city: "Montcuq", instrument: guitar, style: rock, band:  bmth)

file = File.open(Rails.root.join("app/assets/images/lee-malia-bmth.jpeg"))
malia.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

reynolds = User.create!(last_name: "Reynolds", first_name: "Rou",
email: "reynolds@email.com", password: "azerty", bio: "I'm Rou Reynolds, the lead vocalist and keyboardist of Enter Shikari.
I've always been driven to express my thoughts and emotions through music. With Enter Shikari,
I strive to create a platform for activism and awareness, addressing social and political issues.
Through our energetic and dynamic sound, we aim to inspire change and ignite a sense of hope in our listeners.",
city: "Montcuq", instrument: vocal, style: rock, band: shikari)

file = File.open(Rails.root.join("app/assets/images/rou-reynolds-shikari.jpeg"))
reynolds.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

batten = User.create!(last_name: "Batten", first_name: "Chris",
email: "batten@email.com", password: "azerty", bio: "I'm Chris Batten, the bassist of Enter Shikari.
I bring the low-end grooves and rhythmic foundation to our music. With Enter Shikari,
I've had the opportunity to explore diverse musical styles and push the boundaries of what rock can be.
Together, we create a sonic tapestry that is both powerful and innovative, connecting with fans on a visceral level.",
city: "Montcuq", instrument: bass, style: rock, band: shikari)

file = File.open(Rails.root.join("app/assets/images/chris-batten-shikari.jpeg"))
batten.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

clewlow = User.create!(last_name: "Clewlow", first_name: "Rory",
email: "clewlow@email.com", password: "azerty", bio: "I'm Rory Clewlow, the guitarist of Enter Shikari. With my guitar,
I contribute intricate melodies, heavy riffs, and experimental textures to our sound.
I strive to constantly push the boundaries of what can be done with the instrument,
exploring new sonic territories and infusing our music with innovation.
Together, we create a dynamic and captivating musical experience for our fans.",
city: "Montcuq", instrument: guitar, style: rock, band: shikari)

file = File.open(Rails.root.join("app/assets/images/rory-clewlow-shikari.jpeg"))
clewlow.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

joseph = User.create!(last_name: "Joseph", first_name: "Tyler",
email: "joseph@email.com", password: "azerty", bio: "I'm Tyler Joseph, a singer-songwriter and the frontman of Twenty One Pilots.
Through my music, I pour out my innermost thoughts and struggles, addressing themes of mental health, self-discovery, and purpose.
With a blend of vulnerability and energetic performances, I aim to connect with listeners, inspiring them to find hope
and meaning in their own lives.",
city: "Montcuq", instrument: vocal, style: rock, band: pilots)

file = File.open(Rails.root.join("app/assets/images/tyler-joseph-pilots.jpeg"))
joseph.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

dun = User.create!(last_name: "Dun", first_name: "Josh",
email: "dun@email.com", password: "azerty", bio: "I'm Josh Dun, the drummer of Twenty One Pilots. With my energetic
beats and dynamic style, I contribute to the band's unique sound. Through our music, we strive to create a sense of
unity and empowerment among our fans. Together, we embrace creativity, authenticity, and the power of music to uplift
and inspire.",
city: "Montcuq", instrument: drums, style: rock, band: pilots)

file = File.open(Rails.root.join("app/assets/images/josh-dun-pilots.jpeg"))
dun.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

romy = User.create!(last_name: "Flores", first_name: "Romy",
email: "flores@email.com", password: "azerty", bio: "I'm Romy Flores, a singer-songwriter and artist. Drawing inspiration
from diverse musical influences, I create a unique sound that combines elements of R&B, soul, and pop. With soulful vocals and
heartfelt storytelling, my music reflects personal experiences and emotions. Through my art, I strive to connect with listeners
and share a genuine and relatable journey of love, growth, and self-discovery.",
city: "Montcuq", instrument: vocal, style: rock, band: death)

file = File.open(Rails.root.join("app/assets/images/romy-flores-death.jpeg"))
romy.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

hammer = User.create!(last_name: "Hammer", first_name: "Jayden",
email: "hammer@email.com", password: "azerty", bio: "I'm Jayden Hammer, a guitarist and producer.
With a passion for creating music that moves and inspires, I explore various genres,
including electronic, hip-hop, and experimental sounds. Through intricate compositions and innovative production techniques,
I strive to push boundaries and deliver a unique sonic experience. My music is a reflection of my artistic vision and constant
desire to evolve as an artist.",
city: "Montcuq", instrument: guitar, style: rock, band: death)

file = File.open(Rails.root.join("app/assets/images/Jayden-Hammer-death 2.jpeg"))
hammer.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

gene = User.create!(last_name: "Simmons", first_name: "Gene",
email: "gene@email.com", password: "azerty", bio: "Ladies and gentlemen, it's the one and only Gene Simmons of KISS!
I am the fire-breathing demon, the bass-playing mastermind, and the embodiment of rock 'n' roll excess.
From writing hits like 'God of Thunder' to building a merchandising empire, I am the ultimate showman, leaving an indelible mark on the world of music.
The legend of Gene Simmons will never die!", city: "Montcuq", instrument: bass, style: rock, band: kiss)

file = File.open(Rails.root.join("app/assets/images/Gene.jpeg"))
gene.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

paul = User.create!(last_name: "Stanley", first_name: "Paul",
email: "paul@email.com", password: "azerty", bio: "
HHey there, rock 'n' roll warriors! It's me, Paul Stanley, the Starchild of KISS, bringing you the power of the music we love.
With my soaring vocals, I've led the charge on hits like 'Rock and Roll All Nite.'
From the stage to the studio, I am the driving force behind KISS's unforgettable melodies and captivating performances.
Together, we ignite the rock 'n' roll flame that will burn forever!",
city: "Montcuq", instrument: vocal, style: rock, band: kiss)

file = File.open(Rails.root.join("app/assets/images/Paul.jpeg"))
paul.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

ace = User.create!(last_name: "Frehley", first_name: "Ace",
email: "ace@email.com", password: "azerty", bio: "
HWhat's up, space cadets? It's Ace Frehley, the Spaceman of KISS, here to take you on a cosmic journey through rock 'n' roll.
With my killer guitar solos and out-of-this-world riffs, I've left my mark on classics like 'Shock Me.'
I bring the intergalactic coolness to KISS, making us a force to be reckoned with in the universe of rock!",
city: "Montcuq", instrument: guitar, style: rock, band: kiss)

file = File.open(Rails.root.join("app/assets/images/ace.jpeg"))
ace.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

josh = User.create!(last_name: "Kiszka", first_name: "Joshua",
email: "josh@email.com", password: "azerty", bio: "Hey there, rockers! It's Greta Thunberg,
the frontgirl of Greta Van Fleet, ready to unleash my soulful vocals and rock 'n' roll spirit.
With a voice that channels the legends of the past, I bring a raw energy to our music.
Together with my brothers, we're reviving the spirit of rock for a new generation. Let the music carry us forward!",
city: "Montcuq", instrument: vocal, style: rock, band: greta)

file = File.open(Rails.root.join("app/assets/images/josh.jpeg"))
josh.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

jake = User.create!(last_name: "Kiszka", first_name: "Jacob",
email: "jake@email.com", password: "azerty", bio: "Hey, rock 'n' roll warriors! It's Jake Kiszka,
the guitarist of Greta Van Fleet, ready to ignite the stage with my fiery riffs and blistering solos.
With a passion for classic rock, I bring a vintage sound infused with my own style.
Together with my brothers, we create an electrifying energy that sets the world on fire. Let the music roar!",
city: "Montcuq", instrument: guitar, style: rock, band: greta)

file = File.open(Rails.root.join("app/assets/images/jake.jpeg"))
jake.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

sam = User.create!(last_name: "Kiszka", first_name: "Samuel",
email: "sam@email.com", password: "azerty", bio: "Hey, fellow music enthusiasts! Sam Kiszka here,
the bassist of Greta Van Fleet, bringing the groovy low end to our rock 'n' roll escapades.
With my thundering bass lines, I keep the rhythm locked in and the energy flowing.
Together with my brothers, we create a sonic force that transcends boundaries. Let's keep rocking and shaking the foundations of music!",
city: "Montcuq", instrument: bass, style: rock, band: greta)

file = File.open(Rails.root.join("app/assets/images/sam.jpeg"))
sam.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

danny = User.create!(last_name: "Wagner", first_name: "Danny",
email: "danny@email.com", password: "azerty", bio: "Hey, rhythm masters! It's Danny Wagner, the drummer of Greta Van Fleet,
here to drive the heartbeat of our rock 'n' roll machine. With thunderous beats and intricate fills,
I bring the power and precision that keeps our music pulsating.
Together with my brothers, we create a sonic storm that shakes the world. Let the rhythm take control!",
city: "Montcuq", instrument: drums, style: rock, band: greta)

file = File.open(Rails.root.join("app/assets/images/danny.jpeg"))
danny.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

gahan = User.create!(last_name: "Gahan", first_name: "Dave",
  email: "gahan@email.com", password: "azerty", bio: "I'm Dave Gahan, the lead vocalist of Depeche Mode. With my powerful
  and emotive voice, I bring depth and intensity to our music. Through my journey with the band, I've expressed personal
  struggles and triumphs, captivating audiences with my performances. Together, we've created a lasting musical legacy,
  inspiring generations with our electronic sound and artistic exploration.",
  city: "Montcuq", instrument: vocal, style: rock, band: mode)

file = File.open(Rails.root.join("app/assets/images/dave-gahan-mode.jpeg"))
gahan.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

gore = User.create!(last_name: "L Gore", first_name: "Martin",
  email: "gore@email.com", password: "azerty", bio: "
  I'm Martin L Gore, a songwriter, guitarist, and member of Depeche Mode. With a passion for crafting melodic and introspective songs,
  I've contributed to the band's unique sound. Through my songwriting, I explore themes of love, spirituality, and human emotions,
  leaving a lasting impact on the electronic music landscape and connecting with fans on a profound level.",
  city: "Montcuq", instrument: guitar, style: rock, band: mode)

file = File.open(Rails.root.join("app/assets/images/martin-l-gore-mode.jpeg"))
gore.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

folio = User.create!(last_name: "Folio", first_name: "Nick",
  email: "folio@email.com", password: "azerty", bio: "I'm Nick Folio, the drummer of Bad Omens. With my powerful beats
  and rhythmic precision, I lay the foundation for our music. I bring energy and intensity to our live performances,
  driving the songs forward. Together with my bandmates, we create a sonic experience that captivates audiences and leaves a lasting impact.",
  city: "Montcuq", instrument: drums, style: rock, band: omens)

file = File.open(Rails.root.join("app/assets/images/nick-folio-omens.jpeg"))
folio.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

sebastian = User.create!(last_name: "Sebastian", first_name: "Noah",
  email: "sebastian@email.com", password: "azerty", bio: "I'm Noah Sebastian, a musician and the lead vocalist of Bad Omens.
  With my versatile voice, I strive to convey a range of emotions through our music. Drawing from personal experiences,
  I explore themes of darkness, inner turmoil, and the human condition. Together with my bandmates, we aim to create a cathartic
  and authentic musical experience for our fans.",
  city: "Montcuq", instrument: vocal, style: rock, band: omens)

file = File.open(Rails.root.join("app/assets/images/noah-sebastian-omens.jpeg"))
sebastian.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

ruffilo = User.create!(last_name: "Ruffilo", first_name: "Nicholas",
  email: "ruffilo@email.com", password: "azerty", bio: "I'm Nicholas Ruffilo, a guitarist and member of Bad Omens.
  With my intricate riffs and melodic compositions, I contribute to the band's dynamic sound. Passionate about music,
  I aim to create impactful and memorable guitar moments that resonate with listeners. Together with my bandmates,
  we strive to push boundaries and deliver an unforgettable musical experience.",
  city: "Montcuq", instrument: guitar, style: rock, band: omens)

file = File.open(Rails.root.join("app/assets/images/nicholas-riffalo-omens.jpeg"))
ruffilo.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

appleyard = User.create!(last_name: "Appleyard", first_name: "Olli",
  email: "appleyard@email.com", password: "azerty", bio: "I'm Olli Appleyard, a musician and member of Static Dress.
  With my guitar in hand, I contribute powerful riffs and intricate melodies to our sound. Through my music,
  I express my innermost thoughts and emotions, creating a connection with listeners. Together with my bandmates,
  we strive to make a lasting impact through our energetic and heartfelt performances.",
  city: "Montcuq", instrument: vocal, style: rock, band: dress)

file = File.open(Rails.root.join("app/assets/images/olli-appleyard-dress.jpeg"))
appleyard.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

holding = User.create!(last_name: "Holding", first_name: "George",
  email: "holding@email.com", password: "azerty", bio: "I'm George Holding, the bassist of Static Dress. With my rhythmic foundation and driving basslines, I anchor the band's sound.
  Through my music, I strive to bring depth and groove to our songs. Together with my bandmates, we create a powerful and dynamic experience,
  connecting with listeners through our energetic performances.",
  city: "Montcuq", instrument: guitar, style: rock, band: dress)

file = File.open(Rails.root.join("app/assets/images/george-holding-dress.jpeg"))
holding.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

lydon = User.create!(last_name: "Lydon", first_name: "John",
  email: "Lydon@email.com", password: "azerty", bio: "With my visceral vocals and fearless attitude, I embodied punk's spirit of defiance.
  From the gritty streets of London to global stages, my provocative lyrics and rebellious energy challenged authority,
  making an enduring impact on music and cultural rebellion.",
  city: "Montcuq", instrument: vocal, style: rock, band: sexpistols)

file = File.open(Rails.root.join("app/assets/images/john-lydon-SEX.jpeg"))
lydon.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

jones = User.create!(last_name: "Jones", first_name: "Steve",
  email: "jones@email.com", password: "azerty", bio: "The dynamic guitarist of Sex Pistols.
  With my raw and aggressive playing style, I fueled the band's sonic assault. From the iconic riffs of 'Anarchy in the UK' to the raw energy of our live performances,
  I brought a ferocious intensity to punk rock, forever leaving a mark on the genre's history.",
  city: "Montcuq", instrument: guitar, style: rock, band: sexpistols)

file = File.open(Rails.root.join("app/assets/images/steve-jones-SEX.jpeg"))
jones.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

matlock = User.create!(last_name: "Matlock", first_name: "Glen",
  email: "matlock@email.com", password: "azerty", bio: "With my melodic basslines and songwriting contributions,
  I helped shape the band's early sound. Though my time with the band was short, I played a crucial role in creating punk's foundation.
  My musical journey continues, leaving a lasting impact on the punk rock landscape.",
  city: "Montcuq", instrument: guitar, style: rock, band: sexpistols)

file = File.open(Rails.root.join("app/assets/images/glen-matlock-SEX.jpeg"))
matlock.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

cookpaul = User.create!(last_name: "Cook", first_name: "Paul",
  email: "cook2@email.com", password: "azerty", bio: "The powerhouse drummer of Sex Pistols. With my precise and energetic beats,
  I provided the driving force behind the band's explosive sound. From the chaos of our live shows to the recording studio,
  I held the rhythmic backbone, propelling punk rock into the mainstream. A true pioneer of the genre, forever etched in musical history.",
  city: "Montcuq", instrument: drums, style: rock, band: sexpistols)

file = File.open(Rails.root.join("app/assets/images/paul-cook-SEX.jpeg"))
cookpaul.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

vicious = User.create!(last_name: "Vicious", first_name: "Sid",
  email: "vicious@email.com", password: "azerty", bio: "Known for my rebellious persona and punk rock image,
  I brought a raw energy to the band. Though my time with the group was short, my impact was immense.
  With my distinctive style and troubled personal life, I became an iconic figure in punk culture,
  leaving a lasting legacy.",
  city: "Montcuq", instrument: drums, style: rock, band: sexpistols)

file = File.open(Rails.root.join("app/assets/images/Sid-Vicious-SEX.jpeg"))
vicious.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

grohl = User.create!(last_name: "Grohl", first_name: "Dave",
email: "grohl@email.com", password: "azerty", bio: "Since joining the band in 1990, our music has resonated with a worldwide audience.
From the breakthrough success of 'Smells Like Teen Spirit' to the raw emotions of 'In Utero,' our journey has been electric.
The stage is our home, and we're just getting started.",
city: "Montcuq", instrument: drums, style: rock, band: nirvana)

file = File.open(Rails.root.join("app/assets/images/dave-grohl-NIRVANA.jpeg"))
grohl.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

novoselic = User.create!(last_name: "Novoselic", first_name: "Krist",
email: "novoselic@email.com", password: "azerty", bio: "The talented bassist of Nirvana.
Together with Kurt Cobain and Dave Grohl, we've redefined the rock landscape.
From the grunge anthem 'Smells Like Teen Spirit' to the introspective 'All Apologies,' our music speaks to a generation.
With electrifying performances, we've created a sonic revolution that continues to captivate audiences worldwide.",
city: "Montcuq", instrument: bass, style: rock, band: nirvana)

file = File.open(Rails.root.join("app/assets/images/krist-novoselic-NIRVANA.jpeg"))
novoselic.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

everman = User.create!(last_name: "Everman", first_name: "Jason",
email: "evermank@email.com", password: "azerty", bio: "Former guitarist of Nirvana.
As a versatile musician, I've played with Soundgarden and Mind Funk. Although my time with Nirvana was short,
I'm grateful for the experience and the connections I've made in the music industry.",
city: "Montcuq", instrument: guitar, style: rock, band: nirvana)

file = File.open(Rails.root.join("app/assets/images/Jason-Everman-NIRVANA.jpeg"))
everman.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

holland = User.create!(last_name: "Holland", first_name: "Dexter",
email: "holland@email.com", password: "azerty", bio: " I continue to channel my passion for punk rock and relentless energy into our music.
With my distinctive vocals and songwriting, I strive to capture the spirit of rebellion and social commentary.
As we evolve, our commitment to delivering high-octane anthems remains unwavering.",
city: "Montcuq", instrument: vocal, style: rock, band: theoffspring)

file = File.open(Rails.root.join("app/assets/images/dexter-holland-THEOFFSPRING.jpeg"))
holland.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

wasserman = User.create!(last_name: "Wasserman", first_name: "Kevin",
email: "wasserman@email.com", password: "azerty", bio: "I bring fiery riffs and a punk attitude to the stage.
With my distinct guitar style and energetic performances, I help shape our sound. As we continue to push boundaries,
I'm honored to be part of a band that has left an indelible mark on the punk rock scene.",
city: "Montcuq", instrument: bass, style: rock, band: theoffspring)

file = File.open(Rails.root.join("app/assets/images/KEVIN-WASSERMAN-THEOFFSPRING.jpeg"))
wasserman.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

parada = User.create!(last_name: "Parada", first_name: "Pete",
email: "parada@email.com", password: "azerty", bio: "Since joining the band in 2007, I've brought a powerful rhythm and dynamic energy to our music.
With each beat, I strive to enhance our sound and connect with audiences worldwide.
The Offspring's legacy continues to evolve, and I'm grateful to be a part of it.",
city: "Montcuq", instrument: drums, style: rock, band: theoffspring)

file = File.open(Rails.root.join("app/assets/images/pete-parada.jpeg"))
parada.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

radke = User.create!(last_name: "Radke", first_name: "Ronnie",
  email: "radke@email.com", password: "azerty", bio: "I'm Ronnie Radke, a singer-songwriter and the frontman of Falling in Reverse.
  From personal struggles to triumphs, I've channeled my emotions into music. Through a blend of rock, rap, and metal, I express myself authentically.
  Together with my band, we create a powerful and unapologetic musical experience that connects with fans on a deep level.",
  city: "Montcuq", instrument: vocal, style: rock, band: falling)

file = File.open(Rails.root.join("app/assets/images/ronnie-radke-falling.jpeg"))
radke.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

thompson = User.create!(last_name: "Thompson", first_name: "Christian",
  email: "thompson@email.com", password: "azerty", bio: "I''m a guitarist of Falling In Reverse, dedicated to creating powerful
  and dynamic music. With my riffs and melodies, I contribute to our unique sound. Through a blend of heavy and melodic elements,
  I aim to connect with listeners, taking them on a journey through our music and sharing our emotions and experiences.",
  city: "Montcuq", instrument: guitar, style: rock, band: falling)

file = File.open(Rails.root.join("app/assets/images/chrisitan-thompson-falling.jpeg"))
thompson.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

georgiev = User.create!(last_name: "Georgiev", first_name: "Max",
  email: "georgiev@email.com", password: "azerty", bio: "I'm Nick O'Malley, one of the two guitarists of Falling In Reverse,
  bringing heavy riffs and melodic solos to the band's sound. With passion and dedication, I strive to create impactful and
  memorable guitar moments. Together with my bandmates, we aim to create a sonic experience that resonates with fans,
  pushing boundaries and delivering a powerful live performance.",
  city: "Montcuq", instrument: guitar, style: rock, band: falling)

file = File.open(Rails.root.join("app/assets/images/max-giorgiev-falling.jpeg"))
georgiev.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

seaman = User.create!(last_name: "Seaman", first_name: "Ryan",
  email: "seaman@email.com", password: "azerty", bio: "I'm the drummer of Falling In Reverse, driving the band's intense
  rhythm and energy. With precision and creativity, I lay down the foundation for our music. From explosive beats to intricate patterns,
  I strive to create a dynamic and powerful sound. Together with my bandmates, we deliver a captivating and unforgettable
  musical experience.",
  city: "Montcuq", instrument: drums, style: rock, band: falling)

file = File.open(Rails.root.join("app/assets/images/ryan-seaman-falling.jpeg"))
seaman.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

laplante = User.create!(last_name: "LaPlante", first_name: "Courtney",
  email: "laplante@email.com", password: "azerty", bio: "
  I'm Courtney LaPlante, the vocalist of Spiritbox. With my powerful and versatile voice, I bring emotional depth and
  intensity to our music. Through my lyrics, I explore personal struggles, mental health, and existential themes.
  Together with my bandmates, we create a cathartic and immersive sonic experience that resonates with listeners worldwide.",
  city: "Montcuq", instrument: vocal, style: rock, band: spirit)

file = File.open(Rails.root.join("app/assets/images/courtney-laplante-spirit.jpeg"))
laplante.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

stringer = User.create!(last_name: "Stringer", first_name: "Mike",
  email: "stringer@email.com", password: "azerty", bio: "I'm Mike Stringer, the guitarist of Spiritbox. With my intricate
  riffs and atmospheric textures, I contribute to the band's unique sound. Through my musical craftsmanship,
  I aim to create an immersive and captivating sonic landscape. Together with my bandmates, we push boundaries and create music
  that resonates with listeners on a deep and emotional level..",
  city: "Montcuq", instrument: guitar, style: rock, band: spirit)

file = File.open(Rails.root.join("app/assets/images/mike-stringer-spirit.jpeg"))
stringer.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

cerulli = User.create!(last_name: "Cerulli", first_name: "Chris",
  email: "cerulli@email.com", password: "azerty", bio: "I'm Chris Cerulli, the frontman of Motionless In White.
  With my haunting vocals and expressive stage presence, I bring our music to life. Through my lyrics, I explore dark themes,
  personal struggles, and societal issues. Together with the band, we create a powerful and immersive musical experience that
  resonates with fans worldwide.",
  city: "Montcuq", instrument: vocal, style: rock, band: motionless)

file = File.open(Rails.root.join("app/assets/images/chris cerulli-motionless.jpeg"))
cerulli.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

sitkowski = User.create!(last_name: "Sitkowski", first_name: "Ryan",
  email: "sitkowski@email.com", password: "azerty", bio: "I'm Ryan Sitkowski, the guitarist of Motionless In White. With my intricate guitar work and atmospheric tones,
  I help shape our unique sound. Through creativity and experimentation, I strive to push the boundaries of our music.
  Together with my bandmates, we create a dark and immersive sonic experience that connects with fans on a deep and emotional level.",
  city: "Montcuq", instrument: guitar, style: rock, band: motionless)

file = File.open(Rails.root.join("app/assets/images/ryan-sitkowski-motionless.jpeg"))
sitkowski.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

mauro = User.create!(last_name: "Mauro", first_name: "Vinny",
  email: "mauro@email.com", password: "azerty", bio: "I'm Vinny Mauro, the drummer of Motionless In White. With my powerful
  and precise beats, I drive the band's intense sound. Through my rhythmic creativity, I bring energy and dynamics to our music.
  Together with my bandmates, we create a captivating and immersive sonic journey that resonates with fans and leaves a lasting impact.",
  city: "Montcuq", instrument: drums, style: rock, band: motionless)

file = File.open(Rails.root.join("app/assets/images/vinny-mauro-motionless.jpeg"))
mauro.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

morrow = User.create!(last_name: "Morrow", first_name: "Justin",
  email: "morrow@email.com", password: "azerty", bio: "As the bassist of Motionless In White, I contribute the low-end
  foundation and groove to our music. With driving basslines and a dark tone, I enhance the heaviness and atmosphere of our sound.
  Together with my bandmates, we create a sonic landscape that captivates audiences and delivers an unforgettable live experience.",
  city: "Montcuq", instrument: bass, style: rock, band: motionless)

file = File.open(Rails.root.join("app/assets/images/justin-mauro-motionless.jpeg"))
morrow.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

tuomas = User.create!(last_name: "Holopainen", first_name: "Tuomas",
  email: "tuomas@email.com", password: "azerty", bio: "Greetings, fellow dreamers! It is I, Tuomas Holopainen,
  the visionary composer and keyboardist of Nightwish.
  With symphonic orchestrations and poetic lyrics, I bring fantastical worlds to life.
  Through the power of music, I seek to ignite imagination and awaken emotions.
  Join me on this epic journey through the realms of symphonic metal, where dreams become reality.",
  city: "Montcuq", instrument: keyboard, style: rock, band: nightwish)

file = File.open(Rails.root.join("app/assets/images/tuomas 2.jpeg"))
tuomas.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

floor = User.create!(last_name: "Jansen", first_name: "Floor",
  email: "floor@email.com", password: "azerty", bio: "Hello, dear fans of Nightwish! I am Floor Jansen,
  the powerhouse vocalist of this incredible band.
  With my commanding presence and versatile voice, I bring a new dimension to Nightwish's music.
  Together, we embark on epic musical adventures, delivering soaring melodies and emotional performances
  that touch the hearts of listeners around the world. Join me as we conquer stages with our symphonic metal magic!
  ", city: "Montcuq", instrument: vocal, style: rock, band: nightwish)

file = File.open(Rails.root.join("app/assets/images/floor 2.jpeg"))
floor.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

kai = User.create!(last_name: "Hahto", first_name: "Kai",
  email: "kai@email.com", password: "azerty", bio: "Hey there, rhythm warriors! I'm Kai Hahto,
  the mighty drummer of Nightwish, delivering thunderous beats that propel our symphonic metal voyage.
  With precision and power, I drive the band forward, creating a rhythmic foundation that sets hearts ablaze.
  Join me as we embark on an epic musical odyssey, leaving no eardrum unshaken!",
  city: "Montcuq", instrument: drums, style: rock, band: nightwish)

file = File.open(Rails.root.join("app/assets/images/kai 2.jpeg"))
kai.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

dono = User.create!(last_name: "Donockley", first_name: "Troy",
  email: "dono@email.com", password: "azerty", bio: "Greetings, music enthusiasts! It's Troy Donockley,
  the multi-instrumentalist of Nightwish, here to weave my sonic tapestry into the band's enchanting melodies.
  With my Uilleann pipes, tin whistles, and guitars, I add a Celtic touch to our symphonic metal realm.
  Together, we create a captivating fusion that takes listeners on a transcendent musical journey. Let the melodies soar!",
  city: "Montcuq", instrument: bagpipe, style: rock, band: nightwish)

file = File.open(Rails.root.join("app/assets/images/dono 2.jpeg"))
dono.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

simone = User.create!(last_name: "Simons", first_name: "Simone",
  email: "simone@email.com", password: "azerty", bio: "Hello, lovely fans of Epica! It's Simone Simons here,
  the enchanting vocalist of the band. With my ethereal voice and passionate performances, I transport listeners to
  realms of emotion and imagination. Together with Epica, we create symphonic metal masterpieces that empower and captivate.
  Join me as we embark on a musical journey that transcends boundaries and touches the depths of the soul.",
  city: "Montcuq", instrument: vocal, style: rock, band: epica)

file = File.open(Rails.root.join("app/assets/images/simone.jpeg"))
simone.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

mark = User.create!(last_name: "Jansen", first_name: "Mark",
  email: "mark@email.com", password: "azerty", bio: "Greetings, metal enthusiasts! Mark Jansen here,
  the creative force and growling vocalist of Epica. With my dark and powerful growls, I add an aggressive edge to our
  symphonic metal sound. Through my lyrical prowess, I delve into the depths of humanity and spirituality.
  Join me as we explore the realms of darkness and light, forging epic musical tales that leave a lasting impact.",
  city: "Montcuq", instrument: guitar, style: rock, band: epica)

file = File.open(Rails.root.join("app/assets/images/mark.jpeg"))
mark.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

coen = User.create!(last_name: "Janssen", first_name: "Coen",
  email: "coen@email.com", password: "azerty", bio: "Hey there, music aficionados! Coen Janssen at your service,
  the keyboard wizard of Epica. With my ethereal melodies and symphonic arrangements, I add a magical touch to our epic
  soundscapes. From haunting atmospheres to soaring solos, I guide our journey into the realms of symphonic metal.
  Join me as we create sonic tapestries that captivate and inspire. Let the music transport you to new horizons!",
  city: "Montcuq", instrument: keyboard, style: rock, band: epica)

file = File.open(Rails.root.join("app/assets/images/coen-janssen.jpeg"))
coen.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

arien = User.create!(last_name: " Van Weesenbeek", first_name: "Ariën",
  email: "arien@email.com", password: "azerty", bio: "Greetings, fellow metalheads! Ariën van Weesenbeek here,
  the thunderous drummer of Epica. With my relentless beats and technical prowess, I bring the power and intensity
  to our symphonic metal onslaught. From explosive double bass to intricate fills, I create the rhythmic foundation
  that drives our music to new heights. Join me as we unleash a sonic storm that will leave you in awe!",
  city: "Montcuq", instrument: keyboard, style: rock, band: epica)

file = File.open(Rails.root.join("app/assets/images/arien.jpeg"))
arien.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

oceane = User.create!(last_name: " Villeneuve", first_name: "Océane",
  email: "oceane@email.com", password: "azerty", bio: "I am Oceane, an extraordinary bassist.
  My fingers create a symphony of rhythms that comes from the depths of my soul.
  I weave complex basslines that resonate with raw emotion.
  My melodic talent has captivated audiences worldwide, creating an unbreakable bond between me and the music.
  My harmonious journey continues, leaving an indelible imprint on the music scene.",
  city: "Nantes", instrument: bass, style: rock, video_url: "https://www.youtube.com/embed/8JVlY3df4D4")

file = File.open(Rails.root.join("app/assets/images/oceane-avatar.jpeg"))
oceane.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

victor = User.create!(last_name: "Pichereau", first_name: "Victor",
  email: "victor@email.com", password: "azerty", bio: "I am Victor, a guitar virtuoso who dominates the stage with my
  blistering solos and captivating melodies.
  My fingers effortlessly glide across the fretboard, infusing each note with raw emotion.
  With an electrifying presence, I leave an indelible mark on the music scene,
  setting the strings ablaze with my undeniable talent.",
  city: "Nantes", instrument: guitar, style: metal,  video_url: "https://www.youtube.com/embed/9L_T9khrwdo")

file = File.open(Rails.root.join("app/assets/images/victor-avatar.jpeg"))
victor.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

ulysse = User.create!(last_name: "Charraud", first_name: "Ulysse",
  email: "ulysse@email.com", password: "azerty", bio: "I am Ulysse, a skilled drummer.
  With every strike of my sticks, I unleash a rhythmic storm that reverberates through the air.
  From intricate fills to thunderous beats, I forge the backbone of the music.
  My passion for percussion ignites the stage, captivating audiences with my dynamic presence.
  My relentless pursuit as a drummer continues, leaving an indelible mark on the music scene.",
  city: "Nantes", instrument: drums, style: metal, video_url: "https://www.youtube.com/embed/uwdFR0PBANk")

file = File.open(Rails.root.join("app/assets/images/ulysse-avatar.jpeg"))
ulysse.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

florian = User.create!(last_name: "Meline", first_name: "Florian",
  email: "florian@email.com", password: "azerty", bio: "I am Florian, a masterful bagpiper.
  With each breath, I summon ancient melodies that transport listeners to distant lands.
  The haunting notes of my bagpipes weave tales of forgotten traditions and vibrant cultures.
  My passionate playing resonates with the souls of those who hear it, creating a profound connection.
  As a devoted bagpiper, my musical journey carries on, leaving an unforgettable imprint on the music scene.",
  city: "Nantes", instrument: bagpipe, style: metal, video_url: "https://www.youtube.com/embed/2EXysr5NRiE")

file = File.open(Rails.root.join("app/assets/images/florian-avatar.jpeg"))
florian.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

antonin = User.create!(last_name: "TFE", first_name: "Antonin",
  email: "antonin@email.com", password: "azerty", bio: "I am Antonin, the frontman
  of Time for Energy. Through my voice, I channel the energy of the universe,
  delivering electrifying performances. Each lyric carries a message of
  empowerment and resilience, inspiring audiences to rise above. With a stage
  presence that commands attention, I lead the band into a sonic frenzy.
  My journey as the singer of Time for Energy propels forward, leaving an
  indelible impact on the music scene.",
  city: "Nantes", instrument: vocal, style: metal, band: time)

file = File.open(Rails.root.join("app/assets/images/antonin-avatar.jpeg"))
antonin.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

tao = User.create!(last_name: "TFE", first_name: "Tao",
  email: "tao@email.com", password: "azerty", bio: "I am Tao, the powerhouse
  drummer of Time for Energy. With every thunderous strike of my drums,
  I ignite a rhythmic explosion that drives the band's energy. The heartbeat of
  our music pulses through my veins as I unleash a relentless torrent of beats.
  My precise and dynamic playing electrifies the stage, captivating
  audiences with an irresistible force. As the drummer of Time for Energy,
  I propel our sonic journey forward, leaving an indelible mark on the music
  scene.",
  city: "Nantes", instrument: drums, style: metal, band: time)

file = File.open(Rails.root.join("app/assets/images/tao-avatar.jpeg"))
tao.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

julien = User.create!(last_name: "TFE", first_name: "Julien",
  email: "julien@email.com", password: "azerty", bio: "I am Julien,
  the fiery guitarist of Time for Energy. With my fingertips,
  I conjure blistering riffs that ignite the air with raw power.
  The strings of my guitar become an extension of my soul as I unleash
  passionate melodies and searing solos. My relentless energy on stage
  electrifies the audience, leaving them in awe of the sonic landscapes we
  create. As the guitarist of Time for Energy, I forge a path of sonic intensity,
  leaving an indelible mark on the music scene.",
  city: "Montcuq", instrument: guitar, style: metal, band: time)

file = File.open(Rails.root.join("app/assets/images/julien-avatar.jpeg"))
julien.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

yox = User.create!(last_name: "TFE", first_name: "Yox",
  email: "yox@email.com", password: "azerty", bio: "I am Yox, the thunderous
  bassist of Time for Energy. With each pluck of the strings, I lay down a foundation of
  groove that resonates deep within the music. The pulsating rhythms flow through my
  veins, as I lock in with the drummer to create an unshakeable backbone. My melodic
  basslines add a touch of soul and drive the energy of our sound. As the bassist of
  Time for Energy, I propel the band forward, leaving an indelible mark on the music scene.",
  city: "Montcuq", instrument: bass, style: metal, band: time)

file = File.open(Rails.root.join("app/assets/images/yox-avatar.jpeg"))
yox.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

puts "Users created"

puts "Finished!"
