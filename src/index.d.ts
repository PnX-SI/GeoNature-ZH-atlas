export interface Image {
  label: string
  url: string
}

export interface ZoneHumide {
  id: number
  nom: string
  slug: string
  product_owner: string
  input_scale: number
  code: string
  date: Date
  type: string
  type_code: number
  bassin_versant: string[]
  superficie: number
  operateur: string
  menaces: string
  diagnostic_bio: string
  diagnostic_hydro: string
  criteres_delim: string[]
  images: Image[]
  communes: string[]
}
