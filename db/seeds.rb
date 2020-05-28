# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Customer.create!([
  {
    first_name: 'Stephen',
    last_name: 'Trickett',
    email: 'trickett.stephen@btinternet.com',
    phone: '07905533789',
    notes: 'Likes robust touring wheels'
  },
  {
    first_name: 'Toby',
    last_name: 'Collins',
    email: 'toby_collins@tiscali.co.uk',
    phone: '',
    notes: 'deals in classic and vintage'
  },
  {
    first_name: 'Adam',
    last_name: 'Hardy',
    email: 'unit113@gmail.com',
    phone: '',
    notes: 'barefoot walking and running'
  },
  {
    first_name: 'Howard',
    last_name: 'Stredwick',
    email: 'howard@stredwick.co.uk',
    phone: '447870238428',
    notes: 'came for a lesson. Likes cats.'
  },
  {
    first_name: 'Luke',
    last_name: 'Morris',
    email: 'luke.morris@nhs.net',
    phone: '07903 911029',
    notes: 'Audax rider'
  },
  {
    first_name: 'Racer',
    last_name: 'Rosa',
    email: 'diego@racerrosabicycles.co.uk',
    phone: '07903 911029',
    notes: 'RR in Walthamstow'
  },
  {
    first_name: 'David',
    last_name: 'Eserin',
    email: '',
    phone: '',
    notes: 'The e-bike builder'
  },
  {
    first_name: 'Tim',
    last_name: 'Sydor',
    email: '',
    phone: '',
    notes: 'Wheels that need gold spokes'
  }
])

Sheet.create!([
  {
    customer_id: 1,
    received_date: "",
    rims: "",
    info: "",
    holes: 32,
    rim_tape: "",
    rim_erd: 595,
    spoke_info: "",
    pattern: "",
    new_build: true,
  },
  {
    customer_id: 1,
    received_date: "",
    rims: "",
    info: "",
    holes: 32,
    rim_tape: "",
    rim_erd: 602,
    spoke_info: "",
    pattern: "",
    new_build: true,
  },
  {
    customer_id: 3,
    received_date: "",
    rims: "",
    info: "",
    holes: 32,
    rim_tape: "Velox",
    rim_erd: 604,
    spoke_info: "",
    pattern: "",
    new_build: true,
  },
])
