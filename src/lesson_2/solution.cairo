use starknet::ContractAddress;

#[derive(Serde, Copy, Drop, Introspect)]
enum Direction {
    None,
    Left,
    Right,
    Up,
    Down,
}

// Here's where you'll add the remaining fields
#[derive(Model, Drop, Serde)]
struct Moves {
    #[key]
    player: ContractAddress,
    remaining: u8,
    last_direction: Direction
}

impl DirectionIntoFelt252 of Into<Direction, felt252> {
    fn into(self: Direction) -> felt252 {
        match self {
            Direction::None => 0,
            Direction::Left => 1,
            Direction::Right => 2,
            Direction::Up => 3,
            Direction::Down => 4,
        }
    }
}

