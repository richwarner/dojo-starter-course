#[cfg(test)]
mod lesson_1_tests {
    use dojo_starter_course::lesson_1::solution::Direction;

    #[test]
    fn test_direction_enum_variants() {
        assert_eq!(Direction::None.into(), 0);
        assert_eq!(Direction::Left.into(), 1);
        assert_eq!(Direction::Right.into(), 2);
        assert_eq!(Direction::Up.into(), 3);
        assert_eq!(Direction::Down.into(), 4);
    }
}

