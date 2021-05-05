<?php
/**
 * CodeIgniter
 *
 * An open source application development framework for PHP
 *
 * This content is released under the MIT License (MIT)
 *
 * Copyright (c) 2014 - 2018, British Columbia Institute of Technology
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 * @package	CodeIgniter
 * @author	EllisLab Dev Team
 * @copyright	Copyright (c) 2008 - 2014, EllisLab, Inc. (https://ellislab.com/)
 * @copyright	Copyright (c) 2014 - 2018, British Columbia Institute of Technology (http://bcit.ca/)
 * @license	http://opensource.org/licenses/MIT	MIT License
 * @link	https://codeigniter.com
 * @since	Version 1.0.0
 * @filesource
 */
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * CodeIgniter Auth Helper
 *
 * @package		CodeIgniter
 * @subpackage	Helpers
 * @category	Helpers
 * @author		Milind Pasi
 * @link		https://codeigniter.com/user_guide/helpers/array_helper.html
 */

// ------------------------------------------------------------------------

function getGrabLorryType() {

    return array(
        array(
            "id" => "1",
            "name" => "4 wheeler"
        ),
        array(
            "id" => "2",
            "name" => "6 wheeler"
        ),
        array(
            "id" => "3",
            "name" => "8 wheeler"
        )
    );
}

function getGrabLorryAggregates() {

    return array(
        array(
            "id" => "1",
            "name" => "Muck away"
        ),
        array(
            "id" => "2",
            "name" => "Hardcore"
        ),
        array(
            "id" => "3",
            "name" => "Soil"
        ),
        array(
            "id" => "4",
            "name" => "Mixed Aggregates"
        ),
        array(
            "id" => "5",
            "name" => "Building Debris"
        ),
        array(
            "id" => "6",
            "name" => "General Waste"
        )
    );

}


function getIdName($id, $arr) {
    foreach($arr AS $key => $arrInfo) {
        if($arrInfo['id'] == $id) {
            return $arrInfo['name'];
        }
    }
    return '';
}