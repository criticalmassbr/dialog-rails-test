# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    10.times do 
        User.create!([{
            name: 'Bruno',
            age: 25,
            sex: 'Male', 
            city: 'Mairiporã',
            uf: 'SP'
        },
        {
            name: 'Paulo',
            age: 56,
            sex: 'Male', 
            city: 'Mairiporã',
            uf: 'SP'
        },
        {
            name: 'Camila',
            age: 27,
            sex: 'Female', 
            city: 'Seropédica',
            uf: 'RJ'
        },
        {
            name: 'Giuseppe',
            age: 24,
            sex: 'Male', 
            city: 'São Paulo',
            uf: 'SP'
        },
        {
            name: 'Susy',
            age: 58,
            sex: 'Female', 
            city: 'Mairiporã',
            uf: 'SP'
        },
        {
            name: 'Beatriz',
            age: 32,
            sex: 'Female', 
            city: 'Belo-Horizonte',
            uf: 'MG'
        },
        {
            name: 'Jorge',
            age: 12,
            sex: 'Male', 
            city: 'Fortaleza',
            uf: 'CE'
        },
        {
            name: 'Guilherme',
            age: 35,
            sex: 'Male', 
            city: 'São Paulo',
            uf: 'SP'
        },
        {
            name: 'Giovanna',
            age: 58,
            sex: 'Female', 
            city: 'Rio de Janeiro',
            uf: 'RJ'
        },
        {
            name: 'Daniela',
            age: 32,
            sex: 'Female', 
            city: 'Salvador',
            uf: 'BA'
        }])
    end

        p "Created #{User.count} users"