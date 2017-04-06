module MovieTheater exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)


main : Html String
main =
    view init



-- MODEL


type alias Seat =
    { seatNo : Int
    , occupied : Bool
    }


type alias Model =
    List Seat


init : Model
init =
    [ { seatNo = 1, occupied = False }
    , { seatNo = 2, occupied = False }
    , { seatNo = 3, occupied = False }
    , { seatNo = 4, occupied = False }
    , { seatNo = 5, occupied = False }
    , { seatNo = 6, occupied = False }
    , { seatNo = 7, occupied = False }
    , { seatNo = 8, occupied = False }
    , { seatNo = 9, occupied = False }
    , { seatNo = 10, occupied = False }
    , { seatNo = 11, occupied = False }
    , { seatNo = 12, occupied = False }
    ]



-- UPDATE


type Msg
    = Toggle Seat


update : Msg -> Model -> Model
update msg model =
    case msg of
        Toggle seatToToggle ->
            let
                updateSeat seat =
                    if seat.seatNo == seatToToggle.seatNo then
                        { seat | occupied = not seat.occupied }
                    else
                        seat
            in
                List.map updateSeat model



-- VIEW


view : Model -> Html String
view model =
    ul [ class "seats" ] (List.map seatItem model)


seatItem : Seat -> Html String
seatItem seat =
    li [ class "seat available" ] [ text (toString seat.seatNo) ]
