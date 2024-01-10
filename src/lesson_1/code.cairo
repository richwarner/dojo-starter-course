#[derive(Serde, Copy, Drop, Introspect)]
enum Direction {// Add variants here

}

// Don't change this code. It converts the enum variants into felt252s by implementing 
// the Into<T, T> trait, which requires the implemention of the into method.
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

