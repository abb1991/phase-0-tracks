my_car = {
    front: {
        amenities: ['blowers',
                    'stero',
                    'GPS',
                    'sunroof'
                    ],
        seat_info: {
            total_seats: 2,
            cup_holders: 4
        }
    },

    back: {
            amenities: 'not much',
            seat_info: {
            total_seats: 3,
            cup_holders: 1
        }
        },

    exterior: {
        color: 'red',
        brakes: 'squeak'
        },
        misc: [
            "un-named",
            "89k miles"
        ]
}

p my_car[:exterior][:color].upcase
#expect 'RED'
p my_car[:front][:amenities][1] = 'Awesome stereo'
#expect 'Awesome stereo to sub for stereo'
p my_car[:back][:seat_info][:cup_holders]
#expect 1