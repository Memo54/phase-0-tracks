weight_lifting = {
  upper_body: {
    group_1: {
      chest: 5,
      abs: 2,
      shoulders: 2
  },
  group_1_workouts: [
    "bench press",
    "incline press",
    "decline press",
    "dumbell butterflies",
    "dumbell press",
    "sit-ups",
    "mountain climbers",
    "military press",
    "shoulder shrugs"
    ],
    group_2: {
      back: 4,
      arms: 4
  },
  group_2_workouts: [
    "lat pull downs",
    "bent over row",
    "t-bar row",
    "seated-row",
    "barbel curls",
    "ez curl bar",
    "concentrated dumbell curls",
    "concentrated hammer curls"
    ],
  lower_body: {
    group_3: {
      legs: 9
    },
  group_3_workouts: [
    "leg extensions",
    "leg curls",
    "squats",
    "deadlift",
    "leg press",
    "dumbell lunges",
    "seated toe raises",
    "standing toe raises",
    "kettle-bell squats"
    ],
    group_4: {
      cardio: 1
    }
   }
  }
}

p weight_lifting
p weight_lifting[:group_4]
p weight_lifting[:upper_body]
p weight_lifting[:upper_body][:group_1_workouts].push("arnold press")
