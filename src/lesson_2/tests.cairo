#[cfg(test)]
mod move_tests {
    use dojo_starter_course::lesson_2::solution::{Moves, Direction, DirectionIntoFelt252};

    #[test]
    #[available_gas(100000)]
    fn test_moves_has_correct_properties() {
        let moves = Moves {
            player: starknet::contract_address_const::<0x0>(),
            remaining: 100,
            last_direction: Direction::None
        };
        assert(moves.player == starknet::contract_address_const::<0x0>(), 'player is wrong');
        assert(moves.remaining == 100, 'remaining is wrong');
        assert(
            match moves.last_direction {
                Direction::None => true,
                Direction::Left => false,
                Direction::Right => false,
                Direction::Up => false,
                Direction::Down => false,
            },
            'last direction is wrong'
        );
    }
}
