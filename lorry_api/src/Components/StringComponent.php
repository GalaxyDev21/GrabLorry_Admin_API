<?php

namespace APP\Components;

class StringComponent {
    
    public static function convertPriceFormat($price) {
        return number_format($price, PRICEROUND, '.', '');
    }

}