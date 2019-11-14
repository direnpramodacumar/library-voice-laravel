<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Fine;
use App\Loan;

class DynamicPDFController extends Controller
{
    function index()
    {
        return view('dynamic_pdf');
    }
    //get all data from users table
    function getUserData()
    {
        $data = DB::table('users')->get();
        return $data;
    }
    //get all data from books table
    function getBookData()
    {
        $data = DB::table('books')->get();
        return $data;
    }
    //get all data from fines table
    function getFineData()
    {
        $fines=Fine::get();
        return $fines;
    }
    //get all data from loans table
    function getLoanData()
    {
        $loans=Loan::get();
        return $loans;
    }

    function pdfUser()
    {
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($this->convertUserDataToHtml());
        return $pdf->stream();
    }
    function pdfBook()
    {
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($this->convertBookDataToHtml());
        return $pdf->stream();
    }
    function pdfFine()
    {
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($this->convertFineDataToHtml());
        return $pdf->stream();
    }
    function pdfLoan()
    {
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($this->convertLoanDataToHtml());
        return $pdf->stream();
    }

    function convertUserDataToHtml()
    {
        $customer_data = $this->getUserData();
        $output = '
        <style>
        #dataTable {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            
            width: 100%;
          }
          </style>
                    <h2>Users Data</h2>
                    <table class="table" id="dataTable"  style="border: 1px solid;" cellspacing="0">
                    <thead>
                      <tr style="background-color: #CD853F;">
                        <th style="padding:12px;">ID</th>
                        <th style="padding:12px;">Name</th>
                        <th style="padding:12px;">Address</th>
                        <th style="padding:12px;">Phone Number</th>
                        <th style="padding:12px;">Email</th>  
                      </tr>
                    </thead>
                    <tbody>
                    ';  
        foreach($customer_data as $customer)
        {
            $output .= '
                <tr>  
                <td style="padding:12px;">'.$customer->id.'</td>
                <td style="padding:12px;">'.$customer->first_name." ".$customer->last_name.'</td>
                <td style="padding:12px;">'.$customer->address.'</td>
                <td style="padding:12px;">'.$customer->phone_number.'</td>
                <td style="padding:12px;">'.$customer->email.'</td>
                </tr>
                </tbody>';
        }
        $output .= '</table>';
        return $output;
    }

    function convertBookDataToHtml()
    {
        $book_data = $this->getBookData();
        $output = '
        <style>
        #dataTable {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            
            width: 100%;
          }
          </style>
                    <h2>Books Data</h2>
                    <table class="table" id="dataTable"  style="border: 1px solid;" cellspacing="0">
                    <thead>
                      <tr style="background-color: #CD853F;">
                        <th style="padding:12px;">ID</th>
                        <th style="padding:12px;">Title</th>
                        <th style="padding:12px;">Author</th>
                        <th style="padding:12px;">Publisher</th>
                        <th style="padding:12px;">ISBN</th>
                        <th style="padding:12px;">Quantity</th>    
                      </tr>
                    </thead>
                    <tbody>
                    ';  
        foreach($book_data as $book)
        {
            $output .= '
                <tr>  
                <td style="padding:12px;">'.$book->id.'</td>
                <td style="padding:12px;">'.$book->title.'</td>
                <td style="padding:12px;">'.$book->author.'</td>
                <td style="padding:12px;">'.$book->publisher.'</td>
                <td style="padding:12px;">'.$book->isbn.'</td>
                <td style="padding:12px;">'.$book->quantity.'</td>
                </tr>
                </tbody>';   
        }
        $output .= '</table>';
        return $output;
    }

    function convertFineDataToHtml()
    {
        $fine_data = $this->getFineData();
        $output = '
        <style>
        #dataTable {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            
            width: 100%;
          }
          </style>
                    <h2>Fines Data</h2>
                    <table class="table" id="dataTable"  style="border: 1px solid;" cellspacing="0">
                    <thead>
                      <tr style="background-color: #CD853F;">
                        <th style="padding:12px;">ID</th>
                        <th style="padding:12px;">User Name</th>
                        <th style="padding:12px;">Book Title</th>
                        <th style="padding:12px;">Price</th>
                        <th style="padding:12px;">Paid</th>  
                      </tr>
                    </thead>
                    <tbody>
                    ';  
        foreach($fine_data as $fine)
        {
          if($fine->paid==1){
            $paid="Yes";
          }
          else{
            $paid="No";
          }
            $output .= '
                <tr>  
                <td style="padding:12px;">'.$fine->id.'</td>
                <td style="padding:12px;">'.$fine->user->first_name.'</td>
                <td style="padding:12px;">'.$fine->loan->book->title.'</td>
                <td style="padding:12px;">£'.$fine->price.'</td>
                <td style="padding:12px;">'.$paid.'</td>
                </tr>
                </tbody>';
        }
        $output .= '</table>';
        return $output;
    }

    function convertLoanDataToHtml()
    {
        $loan_data = $this->getLoanData();
        $output = '
        <style>
        #dataTable {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            
            width: 100%;
          }
          </style>
                    <h2>Loans Data</h2>
                    <table class="table" id="dataTable"  style="border: 1px solid;" cellspacing="0">
                    <thead>
                      <tr style="background-color: #CD853F;">
                        <th style="padding:12px;">ID</th>
                        <th style="padding:12px;">User Name</th>
                        <th style="padding:12px;">Book Title</th>
                        <th style="padding:12px;">Created At</th>
                        <th style="padding:12px;">Due At</th>
                        <th style="padding:12px;">Returned At</th>  
                      </tr>
                    </thead>
                    <tbody>
                    ';  
        foreach($loan_data as $loan)
        {
            $output .= '
                <tr>  
                <td style="padding:12px;">'.$loan->id.'</td>
                <td style="padding:12px;">'.$loan->user->first_name.'</td>
                <td style="padding:12px;">'.$loan->book->title.'</td>
                <td style="padding:12px;">'.$loan->created_at.'</td>
                <td style="padding:12px;">'.$loan->due_date.'</td>
                <td style="padding:12px;">'.$loan->return_date.'</td> 
                </tr>
                </tbody>';
        }

        $output .= '</table>';
        return $output;
    }
}
