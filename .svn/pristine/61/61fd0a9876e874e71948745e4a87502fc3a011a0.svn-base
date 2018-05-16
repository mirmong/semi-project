<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.displaynone {
	display: none !important;
}

body.eMobilePopup {
	overflow: hidden;
	position: fixed;
}

.ec-base-label {
	display: inline-block;
	margin-right: 5px;
}

.ec-base-label img {
	vertical-align: middle;
}

.ec-solution-box {
	padding: 20px;
	border: 5px solid #e8e8e8;
	color: #404040;
}

.ec-solution-box.gHalf {
	position: relative;
	padding: 20px 0;
}

.ec-solution-box.gHalf:before {
	position: absolute;
	top: 0;
	left: 50%;
	display: block;
	content: "";
	width: 1px;
	height: 100%;
	background-color: #e6e6e6;
}

.ec-solution-box.typeBg {
	background-color: #fbfafa;
}

.ec-solution-box.typeThin {
	border-width: 1px;
	border-color: #d7d5d5;
}

.ec-solution-box.typeThinBg {
	border-width: 1px;
	border-color: #d7d5d5;
	background-color: #fbfafa;
}

.ec-solution-box.typeThinBg>.agree {
	padding: 20px;
	border: 1px solid #e6e6e6;
	background: #fff;
}

.ec-solution-box.typeThinBg>.agree p {
	padding: 0 0 17px;
}

.ec-solution-box.typeMember {
	padding: 0;
}

.ec-solution-box.typeMember .information {
	display: table;
	table-layout: fixed;
	padding: 10px 0;
	width: 100%;
	box-sizing: border-box;
}

.ec-solution-box.typeMember .information>.title, .ec-solution-box.typeMember .information>.thumbnail
	{
	display: table-cell;
	padding: 0 15px;
	width: 70px;
	text-align: center;
	vertical-align: middle;
}

.ec-solution-box.typeMember .information>.title {
	vertical-align: middle;
}

.ec-solution-box.typeMember .information>.thumbnail img {
	max-width: 70px;
}

.ec-solution-box.typeMember .information .description {
	display: table-cell;
	padding: 0 10px;
	width: auto;
	line-height: 1.5em;
	border-left: 1px solid #e8e8e8;
	vertical-align: middle;
}

.ec-solution-box.typeMember.gMessage {
	border-width: 1px;
	border-color: #d7d5d5;
}

.ec-solution-box .message {
	display: block;
	padding: 10px 0 10px 35px;
	border-bottom: 1px solid #e8e7e7;
	background: #fbfbfb
		url("//img.echosting.cafe24.com/skin/base/common/ico_info.gif")
		no-repeat 10px center;
}

.ec-solution-box.typeProduct {
	display: table;
	table-layout: fixed;
	padding: 15px 0;
	width: 100%;
	box-sizing: border-box;
}

.ec-solution-box.typeProduct .thumbnail, .ec-solution-box.typeProduct .information
	{
	display: table-cell;
	padding: 0 20px;
	vertical-align: middle;
}

.ec-solution-box.typeProduct .thumbnail {
	width: 100px;
}

.ec-solution-box.typeProduct .thumbnail img {
	max-width: 90px;
	border: 1px solid #d7d5d5;
}

.ec-solution-box.typeProduct .information {
	padding-left: 0;
}

.ec-solution-button {
	padding: 10px 0;
	text-align: center;
}

.ec-solution-button.justify {
	position: relative;
}

.ec-solution-button:after {
	display: block;
	content: "";
	clear: both;
}

.ec-solution-button .gLeft {
	float: left;
	text-align: left;
}

.ec-solution-button .gRight {
	float: right;
	text-align: right;
}

.ec-solution-button.justify .gLeft {
	position: absolute;
	left: 0;
}

.ec-solution-button.justify .gRight {
	position: absolute;
	right: 0;
}

.ec-solution-button .text {
	margin: 0 6px 0 10px;
	color: #353535;
	line-height: 24px;
}

.ec-solution-button.typeBorder {
	margin-top: -1px;
	padding: 10px 20px;
	border: 1px solid #d7d5d5;
}

.ec-solution-button.typeBG {
	padding: 10px 20px;
	border: 1px solid #d7d5d5;
	background: #fbfafa;
}

.ec-solution-layer li {
	list-style: none;
}

.ec-solution-layer table {
	width: 100%;
	border: 0;
	border-spacing: 0;
	border-collapse: collapse;
}

.ec-solution-layer caption {
	display: none;
}

.ec-solution-layer h1, .ec-solution-layer h3 {
	margin: 0;
}

.ec-solution-layer {
	position: absolute;
	z-index: 100;
	border: 1px solid #757575;
	background: #fff;
}

.ec-solution-layer .header {
	padding: 7px 35px 7px 19px;
	color: #fff;
	background: #495164;
}

.ec-solution-layer .header>h1, .ec-solution-layer .header>h3 {
	font-size: 14px;
	line-height: 1.5;
}

.ec-solution-layer .content {
	padding: 20px;
	font-size: 12px;
}

.ec-solution-layer div.ec-solution-help {
	margin-top: 0;
}

.ec-solution-layer .ec-solution-button {
	padding: 9px;
	border-top: 1px solid #d7d5d5;
	text-align: center;
	background: #fbfafa;
}

.ec-solution-layer .close {
	position: absolute;
	right: 0;
	top: 0;
	padding: 11px 20px;
	cursor: pointer;
}

#popup .ec-solution-layer {
	position: relative;
	border: 0;
}

#popup .ec-solution-layer .header {
	padding: 12px 35px 12px 19px;
}

#popup .ec-solution-layer .close {
	top: 5px;
}

.ec-solution-layer .content>.ec-solution-table table:first-child {
	margin-top: 0;
}

.ec-solution-layer .ec-solution-table table {
	line-height: 1.4;
}

.ec-solution-layer .ec-solution-table thead th {
	padding: 9px 0 8px;
}

.ec-solution-layer .ec-solution-table tbody th {
	padding: 9px 0 8px 10px;
}

.ec-solution-layer .ec-solution-table td {
	padding: 9px 10px 8px;
}

.ec-solution-layer .ec-solution-table.typeWrite td {
	padding: 5px 10px 4px;
}

.ec-solution-layer .ec-solution-table.typeList tfoot td {
	padding: 10px 10px 12px;
}

.ec-solution-layer .ec-solution-table.typeBorder tfoot td {
	padding: 10px 10px 12px;
}

.ec-solution-table table {
	position: relative;
	margin: 10px 0 0;
	border: 1px solid #d7d5d5;
	border-top-color: #fff;
	color: #fff;
	line-height: 1.5;
}

.ec-solution-table.gLayoutFixed table {
	table-layout: fixed;
}

.ec-solution-table.gLayoutFixed .gLayoutAuto table {
	table-layout: auto;
}

.ec-solution-table table:before {
	position: absolute;
	top: 1px;
	left: 0;
	display: block;
	content: "";
	width: 100%;
	height: 1px;
	background: #d7d5d5;
}

.ec-solution-table thead th {
	padding: 11px 0 10px;
	border-left: 1px solid #dfdfdf;
	border-bottom: 1px solid #dfdfdf;
	color: #353535;
	vertical-align: middle;
	font-weight: normal;
	background: #fbfafa;
}

.ec-solution-table tbody th {
	padding: 11px 0 10px 18px;
	border: 1px solid #dfdfdf;
	border-bottom-width: 0;
	color: #353535;
	text-align: left;
	font-weight: normal;
	background-color: #fbfafa;
}

.ec-solution-table th:first-child {
	border-left: 0;
}

.ec-solution-table td {
	padding: 11px 10px 10px;
	border-top: 1px solid #dfdfdf;
	color: #353535;
	vertical-align: middle;
}

.ec-solution-table td.clear {
	padding: 0 !important;
	border: 0 !important;
}

.ec-solution-table.typeWrite td {
	padding: 8px 10px 7px;
}

.ec-solution-table.typeList table {
	border-top-color: #d7d5d5;
}

.ec-solution-table.typeList table:before {
	display: none;
}

.ec-solution-table.typeList td {
	padding: 8px 10px 7px;
}

.ec-solution-table.typeList tfoot td {
	padding: 15px 10px 17px;
	background: #fbfafa;
}

.ec-solution-table .message {
	border: 1px solid #d7d5d5;
	padding: 50px 0;
	text-align: center;
	color: #757575;
	font-weight: bold;
}

.ec-solution-table table+.message {
	margin: -1px 0 0;
}

.ec-solution-table table td.message {
	padding: 50px 0;
}

.ec-solution-table .scroll .message {
	border: 0;
}

.ec-solution-table.typeList .head td {
	padding: 11px 0 10px;
	border-left: 1px solid #dfdfdf;
	border-bottom: 1px solid #dfdfdf;
	color: #353535;
	vertical-align: middle;
	text-align: center;
	background: #fbfafa;
}

.ec-solution-table.typeList .head td:first-child {
	border-left: 0;
}

.ec-solution-table.typeList .scroll {
	position: relative;
	overflow-x: hidden;
	overflow-y: scroll;
	max-height: 185px;
	min-height: 100px;
	border: 1px solid #d7d5d5;
	border-top-width: 0;
	margin-top: -1px;
}

.ec-solution-table.typeList .scroll table {
	border: 0;
	margin: 0;
}

.ec-solution-table.typeList .scroll table:before {
	display: none;
}

.ec-solution-table.typeList .scroll .message {
	border: 0;
}

.ec-solution-table thead.blind, .ec-solution-table thead.blind th {
	display: none;
}

.ec-solution-table thead.blind+tbody tr:first-child th,
	.ec-solution-table thead.blind+tbody tr:first-child td {
	border-top-width: 0;
}

.ec-solution-table.typeList.gLine table {
	border-width: 0;
	border-bottom-width: 1px;
}

.ec-solution-table.typeClear table:before {
	display: none;
}

.ec-solution-table.typeClear table, .ec-solution-table.typeClear th,
	.ec-solution-table.typeClear td {
	border: 0 none;
	background: none;
}

.ec-solution-table.typeClear th {
	font-weight: bold;
}

.ec-solution-table.gBorder td {
	border-left: 1px solid #dfdfdf;
}

.ec-solution-table.gBorder td:first-child {
	border-left: 0;
}

.ec-solution-table .left {
	text-align: left;
}

.ec-solution-table .center {
	text-align: center;
}

.ec-solution-table .right {
	text-align: right;
}

.ec-solution-table.typeList .center td, .ec-solution-table.typeList td.center
	{
	padding-left: 0;
	padding-right: 0;
}

.ec-solution-table.typeList .center td.left {
	padding-left: 10px;
}

.ec-solution-table.typeList .center td.right {
	padding-right: 10px;
}

.ec-solution-table .top th, .ec-solution-table th.top,
	.ec-solution-table .top td, .ec-solution-table td.top {
	vertical-align: top;
}

.ec-solution-table .middle th, .ec-solution-table th.middle,
	.ec-solution-table .middle td, .ec-solution-table td.middle {
	vertical-align: middle;
}

.ec-solution-table img {
	vertical-align: middle;
}

@media print {
	.ec-solution-table table:before {
		display: none;
	}
}

.mt15 {
	margin-top: 15px;
}

.clear_both {
	clear: both;
}

.space {
	height: 10px;
	clear: both;
}

.space2 {
	height: 5px;
	clear: both;
}

.list_list {
	width: 100%;
	border: 0;
	border-top: 2px solid #cfcfcf;
	margin: 0 0 20px 0;
	padding: 0;
}

.list_list th div {
	white-space: nowrap;
}

.list_list tr.bg0 {
	background: #fff;
}

.list_list tr.bg1 {
	background: #f8f8f8;
}

.list_list th, .list_list td {
	border: 0;
	padding: 5px 10px;
	text-align: left;
	vertical-align: middle;
}

.list_list th {
	background: #f4f4f4;
}

.list_list tbody th {
	border-bottom: 1px solid #e5e5e5;
}

.list_list td {
	border-bottom: 1px solid #f0f0f0;
}

.list_list th.button, .colTable th.button, .crossTable th.button {
	text-align: right;
}

.list_list td.alert, .colTable td.alert, .crossTable td.alert {
	color: red !important;
}

.list_list td.alert a, .colTable td.alert a, .crossTable td.alert a {
	text-decoration: none;
	color: red !important;
}

.tableRow {
	width: 100%;
	border: 0;
	border-top: 2px solid #cfcfcf;
	margin: 0 0 20px 0;
	padding: 0;
}

.tableRow th div {
	white-space: nowrap;
}

.tableRow tr.bg0 {
	background: #fff;
}

.tableRow tr.bg1 {
	background: #f8f8f8;
}

.tableRow th, .tableRow td {
	border: 0;
	padding: 5px 10px;
	vertical-align: middle;
}

.tableRow th {
	background: #f4f4f4;
	text-align: left;
	padding-left: 20px;
}

.tableRow tbody th {
	border-bottom: 1px solid #e5e5e5;
}

.tableRow td {
	border-bottom: 1px solid #f0f0f0;
}

.tableRow th.button, .colTable th.button, .crossTable th.button {
	text-align: right;
}

.tableRow td.alert, .colTable td.alert, .crossTable td.alert {
	color: red !important;
}

.tableRow td.alert a, .colTable td.alert a, .crossTable td.alert a {
	text-decoration: none;
	color: red !important;
}

.board_pagination {
	margin: 0 auto;
	text-align: center;
	margin-top: 15px;
}

.board_comment_list textarea, .board_comment_write textarea {
	width: 90%;
	font-size: 12px;
}

.board_comment_list .comment_lists {
	height: 25px;
	border-bottom: 1px solid #e8e8e8;
	padding-top: 10px;
}

.displaynone {
	display: none;
}

.board_pagination .current {
	color: #CC0000;
	font-weight: bold;
}

.table01 {
	width: 100%;
	border: 0;
	margin: 0;
	padding: 0;
}

.ipInfo {
	text-align: right;
	width: 100%;
}

.xans-instagramwidget .displaynone {
	display: none;
}

.xans-board-title .title {
	min-height: 15px;
	margin: 22px auto 15px;
	font-family: 'Open Sans', '맑은 고딕';
	text-align: center;
}

.xans-board-title .title h2 {
	display: block;
	font-family: 'Open Sans', '맑은 고딕';
	letter-spacing: 0.07em;
	font-weight: 600;
	text-transform: uppercase;
	font-size: 13px;
}

.xans-board-title .title p {
	display: block;
	font-size: 11px;
	margin: 10px 0 0;
	color: #777;
	vertical-align: bottom;
}

.xans-board-title p.imgArea {
	margin: 0 0 20px;
}

.xans-board-listpackage .boardSort {
	float: left;
	margin: 0 0 10px;
}

ul.xans-board-listheader-8 {
	text-align: right;
	margin: 0 0 10px;
}

ul.xans-board-listheader-8 li {
	display: inline;
}

.xans-board-listpackage-8 {
	margin: 0 0 20px;
}

.xans-board-listpackage-8 .notice {
	margin: 0 0 20px;
	border-bottom: 0;
	clear: both;
}

.xans-board-listpackage-8 .xans-board-notice-8 li {
	overflow: hidden;
	padding: 15px;
	border-bottom: 1px solid #d7d5d5;
	color: #757575;
}

.xans-board-listpackage-8 .xans-board-notice-8 li .description {
	padding: 15px 0 0 205px;
	line-height: 18px;
}

.xans-board-listpackage-8 .xans-board-notice-8 li .description .subject
	{
	margin: 0 0 30px;
	padding: 0 0 10px;
	border-bottom: 1px solid #d7d5d5;
	color: #000;
}

.xans-board-listpackage-8 .xans-board-notice-8 li .description .subject a
	{
	font-weight: bold;
}

.xans-board-listpackage-8 .xans-board-notice-8 li .description .subject img
	{
	vertical-align: middle;
}

.xans-board-listpackage-8 .xans-board-notice-8 li .description strong {
	font-weight: normal;
	font-size: 11px;
}

.xans-board-listpackage-8 .xans-board-notice-8 li .description em {
	display: block;
	font-style: normal;
	font-size: 11px;
}

.xans-board-listpackage-8 .xans-board-notice-8 li:after {
	content: "";
	display: block;
	clear: both;
}

.xans-board-listpackage-8 .xans-board-notice-8 .imgLink {
	float: left;
}

.xans-board-listpackage-8 .xans-board-notice-8 .imgLink img {
	width: 187px;
	border: 1px solid #ececec;
	display: block;
}

.xans-board-listpackage-8 .xans-board-fixed-8 li {
	overflow: hidden;
	padding: 15px;
	border-bottom: 1px solid #d7d5d5;
	color: #757575;
}

.xans-board-listpackage-8 .xans-board-fixed-8 li .description {
	padding: 15px 0 0 205px;
	line-height: 18px;
}

.xans-board-listpackage-8 .xans-board-fixed-8 li .description .subject {
	margin: 0 0 30px;
	padding: 0 0 10px;
	border-bottom: 1px solid #d7d5d5;
	color: #000;
}

.xans-board-listpackage-8 .xans-board-fixed-8 li .description .subject a
	{
	font-weight: bold;
}

.xans-board-listpackage-8 .xans-board-fixed-8 li .description .subject img
	{
	vertical-align: middle;
}

.xans-board-listpackage-8 .xans-board-fixed-8 li .description strong {
	font-weight: normal;
	font-size: 11px;
}

.xans-board-listpackage-8 .xans-board-fixed-8 li .description em {
	display: block;
	font-style: normal;
	font-size: 11px;
}

.xans-board-listpackage-8 .xans-board-fixed-8 li:after {
	content: "";
	display: block;
	clear: both;
}

.xans-board-listpackage-8 .xans-board-fixed-8 .imgLink {
	float: left;
}

.xans-board-listpackage-8 .xans-board-fixed-8 .imgLink img {
	width: 187px;
	border: 1px solid #ececec;
	display: block;
}

.xans-board-listpackage-8 .xans-board-list-8 {
	clear: both;
	overflow: hidden;
	font-family: '맑은 고딕', sans-serif;
}

.xans-board-listpackage-8 .xans-board-list-8 ul {
	width: 100%;
	min-width: 756px;
	margin: -20px 0 0px;
	font-size: 0;
	line-height: 0;
}

.xans-board-listpackage-8 .xans-board-list-8 li {
	display: inline-block;
	*display: inline;
	*zoom: 1;
	width: 33.3%;
	margin: 20px 0 40px 0;
	font-size: 12px;
	color: #757575;
	line-height: 18px;
	vertical-align: top;
}

.xans-board-listpackage-8 .xans-board-list-8 li .imgLink img {
	display: block;
	width: 290px;
	height: 245px;
	margin: 0 auto 15px;
}

.xans-board-listpackage-8 .xans-board-list-8 li .boardChk {
	display: block;
	margin: 0 auto 10px;
}

.xans-board-listpackage-8 .xans-board-list-8 li a.imgLink,
	.xans-board-listpackage-8 .xans-board-list-8 li a.imgLink:hover {
	display: block;
	width: 290px;
	margin: 0 auto;
	color: #2e2e2e;
}

.xans-board-listpackage-8 .xans-board-list-8 li span {
	display: block;
	margin: 8px auto 0;
	width: 290px;
}

.xans-board-listpackage-8 .xans-board-list-8 li strong {
	font-weight: normal;
	font-size: 11px;
}

.xans-board-listpackage-8 .xans-board-list-8 li em {
	display: block;
	font-style: normal;
	font-size: 11px;
}

.xans-board-listpackage-8 .xans-board-buttonlist-8 {
	padding: 7px 20px 7px 0;
	border-top: 0;
	text-align: right;
	margin: 7px 0 0 0;
}

.xans-board-listpackage-8 .xans-board-buttonlist-8 .boardwritebtn {
	border: 1px solid #ccc;
	font-family: 'Open Sans', sans-serif;
	color: #666;
	padding: 3px 25px;
	font-size: 10px;
	letter-spacing: 0.08em;
}

.xans-board-listpackage-8 .xans-board-buttonlist-8 .boardwritebtn:hover
	{
	background: #aaa;
	color: #fff;
	border: 1px solid #aaa;
}

.boardListEmpty {
	padding: 0 0 20px;
	text-align: center;
}

.xans-board-paging {
	margin: 10px 0 0;
	padding: 20px 0;
	text-align: center;
}

.xans-board-paging p {
	display: inline-block;
	vertical-align: top;
	*display: inline;
	*zoom: 1;
}

.xans-board-paging p.first {
	margin: 0 -4px 0 0;
}

.xans-board-paging p.last {
	margin: 0 0 0 -4px;
}

.xans-board-paging ol {
	display: inline-block;
	margin: 1px -4px;
	font-size: 0;
	line-height: 0;
	vertical-align: top;
	*display: inline;
	*zoom: 1;
	*margin: 0;
}

.xans-board-paging li {
	display: inline-block;
	margin: 0 0 0 -1px;
	font-size: 12px;
	color: #757575;
	vertical-align: top;
	*display: inline;
	*zoom: 1;
}

.xans-board-paging li:first-child {
	margin-left: 0;
}

.xans-board-paging img {
	vertical-align: top;
}

.xans-board-paging li a {
	display: block;
	width: 35px;
	color: #999;
	line-height: 14px;
	background: #fff;
}

.xans-board-paging li a:hover {
	text-decoration: none;
	color: #bbb;
}

.xans-board-paging li a.this {
	color: #555;
}

.xans-board-paging a.nolink {
	cursor: default;
}

.xans-board-search {
	padding: 10px 0 15px;
	color: #2e2e2e;
	font-size: 11px;
	text-align: left;
}

.xans-board-search input {
	height: 14px;
	width: 162px;
	padding: 3px;
	border: 1px solid #d5d5d5;
	color: #2e2e2e;
}

.xans-board-search .boardSearch {
	display: block;
}

.xans-board-search .boardSearch .boardsecrshbtn {
	border: 1px solid #aaa;
	color: #fff;
	background: #aaa;
	padding: 1px 5px 4px;
	font-family: '맑은 고딕';
}

.xans-board-catemove {
	padding: 30px 10px 0;
	border-top: 1px solid #d7d5d5;
	color: #757575;
	font-size: 12px;
}

.xans-board-catemove p {
	padding: 0 0 0 7px;
	line-height: 25px;
	background:
		url("http://img.echosting.cafe24.com/skin/base_ko_KR/board/ico_function.gif")
		no-repeat 0 10px;
}

.xans-board-function {
	padding: 10px 0 0;
	color: #757575;
	font-size: 12px;
}

.xans-board-function p {
	padding: 0 0 0 7px;
	line-height: 25px;
	background:
		url("http://img.echosting.cafe24.com/skin/base_ko_KR/board/ico_function.gif")
		no-repeat 0 10px;
}

html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre,
	code, form, fieldset, legend, input, textarea, p, blockquote, th, td,
	img {
	margin: 0;
	padding: 0;
}

html {
	width: 100%;
	height: 100%;
}

body, code {
	font: 0.75em Verdana, Dotum, AppleGothic, sans-serif;
	color: #353535;
	background: #fff;
}

body {
	min-width: 1320px;
}

body#popup {
	min-width: 0;
}

li {
	list-style: none;
}

img, fieldset {
	border: none;
	vertical-align: top;
}

table {
	width: 100%;
	border: 0;
	border-spacing: 0;
	border-collapse: collapse;
}

caption {
	display: none;
}

th, td {
	border: 0;
	vertical-align: top;
}

input, select, textarea {
	font-size: 100%;
	font-family: "돋움", Dotum;
	color: #353535;
	vertical-align: middle;
}

.inputTypeText {
	height: 19px;
	padding: 3px 0 0 9px;
	border: 1px solid #d5d5d5;
}

select {
	height: 24px;
	border: 1px solid #d5d5d5;
}

textarea {
	padding: 5px 6px;
	border: 1px solid #d5d5d5;
	line-height: 1.5;
}

legend {
	visibility: hidden;
	position: absolute;
	left: -9999px;
	top: -9999px;
	width: 0;
	height: 0;
	line-height: 0;
}

button {
	overflow: visible;
	padding: 0;
	margin: 0;
	border: 0;
	cursor: pointer;
}

hr.layout {
	display: none;
}

a {
	text-decoration: none;
	color: #000;
}

a:hover {
	text-decoration: normal;
}

a:active {
	text-decoration: none;
}

.objHidden {
	visibility: hidden;
	position: absolute;
	left: -1000px;
	top: -1000px;
	height: 0;
	width: 0;
}

table tr.radioType input, span.noBorder input {
	border: none !important;
	width: auto !important;
	height: auto !important;
	margin: 0 3px 0 0 !important;
	vertical-align: middle !important;
	background: none !important;
}

#content_CONTAINER td {
	width: auto !important;
}

table.nneditor-table {
	width: auto !important;
}

#progressPaybarBackground {
	position: absolute;
	z-index: 99;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
}

#progressPaybarView {
	position: absolute;
	z-index: 100;
	top: 160px;
	left: 20px;
	width: 471px;
	font-size: 12px;
}

#progressPaybarView .box {
	height: 180px;
	background:
		url(http://img.cafe24.com/images/ec_hosting/popup/layer_guide/bg_layer_box1.gif)
		0 0 no-repeat;
}

#progressPaybarView .box .graph {
	padding: 15px 0 0 0;
	text-align: center;
}

#progressPaybarView .box .graph span {
	display: block;
	text-align: center;
	margin: 20px 0;
}

#progressPaybarView .box .txt {
	text-align: center;
	padding: 15px 0 0;
	color: #555555;
}

div.layerProgress {
	filter: alpha(opacity = 40);
	opacity: 0.4;
	-moz-opacity: 0.4;
	background-color: #999;
}

#skipNavigation {
	position: absolute;
	top: 0;
	left: 0;
	z-index: 100;
	width: 100%;
	height: 0;
}

#skipNavigation p, #skipNavigation ul, #skipNavigation ul li {
	height: 0;
}

#skipNavigation p a {
	position: absolute;
	left: 0;
	top: 0;
	display: block;
	overflow: hidden;
	width: 1px;
	height: 1px;
	margin-left: -1px;
	margin-bottom: -1px;
	text-align: center;
	color: #000;
	white-space: nowrap;
}

#skipNavigation p a:focus, #skipNavigation p a:hover, #skipNavigation p a:active
	{
	width: 100%;
	height: auto;
	padding: 10px 0;
	background: #c4122f;
	color: #fff;
	z-index: 100;
}

.displaynone {
	display: none;
}

#header {
	
}

#header .inner {
	width: 100%;
	margin: 0 auto;
	overflow: hidden;
	position: fixed;
	top: 0;
	z-index: 999;
	background: #fff;
}

#header .inner .top_menu {
	width: 1304px;
	margin: 0 auto;
	overflow: hidden;
}

#header .sub_menu {
	overflow: hidden;
	width: 1304px;
	margin: 0 auto;
}

#header .sub_menu ul {
	float: left;
}

#header .sub_menu ul li {
	display: inline-block;
}

#header .sub_menu ul a {
	color: #333;
	font-size: 10px;
	font-weight: 400;
	font-family: 'Open Sans', sans-serif;
	line-height: 30px;
	text-transform: uppercase;
	letter-spacing: 0.07em;
	padding: 0 20px 0 0;
}

#header .sub_menu ul a:hover {
	color: #999;
}

#header .sub_menu ul li div {
	width: 290px;
	height: 144px;
	background: #fff;
	border: 1px solid #DADADA;
	position: absolute;
	z-index: 998;
	padding: 10px 15px;
	display: none;
}

#header .sub_menu ul li div p {
	font-family: 'Open Sans', sans-serif;
	line-height: 18px;
	font-size: 10px;
	text-transform: uppercase;
}

#header .sub_menu ul li div .csinfo_h {
	font-weight: 600;
	padding: 8px 0 3px;
}

#header .sub_menu ul li div .strong {
	font-size: 11px;
	font-weight: 600;
	padding: 3px 0 2px;
}

#header .search_sns {
	float: right;
	padding: 5px 0 0;
	position: relative;
	overflow: hidden;
	width: 200px;
}

#header .search_sns .sns_btn {
	padding: 0 10px 0 0;
	position: absolute;
	top: 8px;
	right: 127px;
}

#header .search_sns .sns_btn a {
	padding: 0 0 0 2px;
}

#header .header_menu {
	width: 100%;
	height: 60px;
	border-top: 1px solid #DADADA;
	border-bottom: 1px solid #DADADA;
}

#header .header_menu .category_inner {
	width: 1304px;
	margin: 0 auto;
}

.fixmenu {
	z-index: 98;
	position: fixed;
	top: 22px;
	margin: 0;
	width: 100%;
	opacity: 1;
	background: #fff;
	box-shadow: 1px 1px 10px #e0e0e0;
}

#wrap {
	position: relative;
	margin: 0 auto;
	width: 100%;
}

#container {
	width: 1304px;
	min-height: 600px;
	margin: 0 auto;
}

#contents {
	width: 1304px;
	min-height: 600px;
	padding-bottom: 100px;
	margin: 0 auto;
}

#contents01 {
	width: 1304px;
	min-height: 500px;
	margin: 0 auto;
}

#contents02 {
	width: 1000px;
	min-height: 500px;
	margin: 80px auto 80px;
}

#banner {
	position: absolute;
	top: 0;
	left: 0;
	width: 90px;
}

#quick {
	position: absolute;
	top: 0;
	right: 0;
	width: 90px;
}

#quick .banner a {
	display: block;
	margin: 15px 0 0;
}

#footer {
	width: 100%;
	overflow: hidden;
	border-top: 1px solid #DADADA;
	margin: 70px 0 0;
}

#footer .inner {
	width: 1100px;
	margin: 0 auto;
	position: relative;
	overflow: hidden;
	padding: 70px 0 50px;
}

.btnTop {
	display: none;
	position: fixed;
	bottom: 8px;
	right: 8px;
	overflow: hidden;
	width: 42px;
	height: 42px;
	border: 1px solid #ddd;
	line-height: 42px;
	text-align: center;
	font-family: 'Open Sans', sans-serif;
	font-size: 10px;
	color: #555;
	background: #fff;
	letter-spacing: 0.08em;
}

.btnTop:hover {
	border: 1px solid #C1C1C1;
}

#main_top {
	margin: 70px auto 70px;
	overflow: hidden;
	width: 900px;
}

#main_top .part {
	width: 32.3%;
	height: 150px;
	border: 1px solid #ececec;
	float: left;
	margin: 0 10px 0 0;
}

#main_top .part:last-child {
	margin: 0;
	padding: 0 8px;
	width: 30.7%;
}

#main_bottom {
	margin: 80px 0 0px 0;
}

#main_bottom .back {
	position: relative;
	width: 1304px;
	height: 380px;
	background: url('/web/upload/madeleine/back.jpg') repeat-y center top
		fixed;
	overflow: hidden;
	text-align: center;
}

#main_bottom .back p {
	font-family: 'Open Sans', sans-serif;
	font-size: 25px;
	letter-spacing: 0.6em;
	line-height: 370px;
	color: #fff;
	text-shadow: 3px 2px 6px #ADADAD;
}

#bannerArea {
	margin: 22px 0 0;
}

#bannerArea h2 {
	margin: 0 0 16px;
	font-weight: normal;
	font-size: 20px;
	font-family: Arial, "돋움", Dotum, sans-serif;
	color: #2e2e2e;
	text-align: center;
}

.path {
	overflow: hidden;
	height: 30px;
	line-height: 30px;
	*zoom: 1;
}

.path span {
	overflow: hidden;
	position: absolute;
	width: 0;
	height: 0;
	white-space: nowrap;
	text-indent: 100%;
}

.path ol {
	float: right;
}

.path li {
	float: left;
	padding: 0 0 0 12px;
	margin: 0 0 0 8px;
	color: #757575;
	background:
		url("http://img.echosting.cafe24.com/skin/base_ko_KR/common/ico_path.gif")
		no-repeat 0 10px;
}

.path li:first-child {
	background: none;
}

.path li a {
	color: #757575;
}

.path li strong, .path li strong a {
	color: #2e2e2e;
}

.titleArea {
	margin: 22px 0px 60px;
}

.titleArea h2 {
	font-family: 'Open Sans', '맑은 고딕';
	letter-spacing: 0.07em;
	font-weight: 600;
	text-transform: uppercase;
	font-size: 13px;
	color: #555;
	text-align: center;
	margin: 10px auto 15px;
}

.titleArea p {
	margin: 0 0 0 0px;
	color: #777;
	font-family: "Malgun Gothic";
	text-align: center;
	font-size: 11px;
}

.titleArea ul {
	padding: 5px 0;
	color: #888;
	line-height: 18px;
}

.titleArea ul li {
	font-family: "Malgun Gothic";
	text-align: center;
	padding: 3px 0 0;
	font-size: 11px;
}

.help {
	margin: 100px 0 0;
	line-height: 18px;
	font-family: "Malgun Gothic";
}

.help h3 {
	padding: 9px 0 6px 0;
	color: #555;
	font-size: 11px;
}

.help .content {
	padding: 0 0px 11px;
}

.help .content h4 {
	margin: 22px 0 -4px;
	color: #333;
	font-size: 11px;
	font-weight: bold;
}

.help .content h4:first-child {
	margin-top: 13px;
}

.help .content p {
	margin: 15px 0 0 10px;
	color: #777;
}

.help .content ul {
	margin: 15px 0 0 0px;
}

.help .content li {
	color: #777;
	font-size: 11px;
}

.boardMain {
	overflow: hidden;
	*zoom: 1;
}

.boardMain td img {
	vertical-align: middle;
	margin: 1px;
}

.boardMain .board {
	margin: 0 0 65px;
}

.boardMain .leftArea {
	float: left;
	width: 50%;
}

.boardMain .leftArea .board {
	margin: 0 23px 65px 0;
}

.boardMain .rightArea {
	float: right;
	width: 50%;
}

.boardMain .rightArea .board {
	margin: 0 0 65px 23px;
}

#modalBackpanel {
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 10000;
	width: 100%;
	height: 100%;
	background: #000;
}

#modalContainer {
	display: none;
	position: absolute;
	top: 100px;
	left: 100px;
	z-index: 10001;
	width: 975px;
	height: 720px;
	border: 1px solid #333;
	background: #fff;
}

#modalContainer #modalContent {
	width: 100%;
	height: 100%;
}

.xans-layout-boardinfo {
	overflow: hidden;
	float: left;
}

.xans-layout-boardinfo h2 {
	height: 20px;
	color: #2e2e2e;
	font-size: 12px;
}

.xans-layout-boardinfo ul {
	
}

.xans-layout-boardinfo li {
	float: left;
}

.xans-layout-boardinfo li img {
	vertical-align: middle;
}

.xans-layout-boardinfo a {
	color: #333;
	font-size: 10px;
	font-family: 'Open Sans', '맑은 고딕';
	letter-spacing: 0.07em;
	font-weight: 400;
	text-transform: uppercase;
	padding: 0 22px 0 0;
	line-height: 22px;
}

.xans-layout-boardinfo a:hover {
	color: #999;
}

.xans-layout-statelogoff {
	float: right;
}

.xans-layout-statelogoff a {
	color: #333;
	font-size: 10px;
	font-family: 'Open Sans', '맑은 고딕';
	letter-spacing: 0.07em;
	font-weight: 400;
	text-transform: uppercase;
	padding: 0 0 0 20px;
	line-height: 22px;
}

.xans-layout-statelogoff a:hover {
	color: #999;
}

.xans-layout-statelogoff .log {
	background: none;
}

.xans-layout-statelogon {
	float: right;
}

.xans-layout-statelogon a {
	color: #333;
	font-size: 10px;
	font-family: 'Open Sans', '맑은 고딕';
	letter-spacing: 0.07em;
	font-weight: 400;
	text-transform: uppercase;
	padding: 0 0 0 20px;
	line-height: 22px;
}

.xans-layout-statelogon a:hover {
	color: #999;
}

.xans-layout-statelogon .myinfo {
	color: #444;
	font-size: 11px;
}

.xans-layout-statelogon .myinfo strong {
	color: #444;
	font-size: 12px;
}

.xans-layout-statelogon .myinfo a {
	background: none;
}

.xans-layout-logotop {
	margin: 92px auto 52px;
	text-align: center;
}

.xans-layout-logotop img {
	max-height: 200px;
}

.xans-layout-logotop a:hover {
	opacity: 0.6;
}

.xans-layout-searchheader {
	width: 125px;
	float: right;
}

.xans-layout-searchheader fieldset {
	border: 1px solid #E2E2E2;
}

.xans-layout-searchheader #keyword {
	width: 95px;
	height: 18px;
	padding: 0 0 0 6px;
	border: 0;
	line-height: 20px;
	font-size: 11px;
	color: #888;
	background: #fff;
}

.xans-layout-footer .xans-layout-searchheader {
	position: absolute;
	top: 169px;
	right: 1px;
	width: 120px;
	margin: 30px 0 0 0;
}

.xans-layout-footer .xans-layout-searchheader fieldset {
	border: 1px solid #E2E2E2;
}

.xans-layout-footer .xans-layout-searchheader #keyword {
	width: 90px;
	height: 20px;
	padding: 0 0 0 6px;
	border: 0;
	line-height: 20px;
	font-size: 11px;
	color: #333;
	background: #fff;
}

.xans-layout-category {
	text-align: center;
}

.xans-layout-category .position {
	
}

.xans-layout-category .position>ul {
	
}

.xans-layout-category .position>ul>li {
	position: relative;
	z-index: 10;
	float: left;
	padding: 0 55px 0 0;
}

.xans-layout-category .position>ul>li>a {
	color: #333;
	font-size: 12px;
	font-weight: 600;
	font-family: 'Open Sans', sans-serif;
	line-height: 60px;
	text-transform: uppercase;
	letter-spacing: 0.09em;
}

.xans-layout-category .position>ul>li:last-child {
	padding: 0;
}

.xans-layout-category .position>ul>li>a:hover, .xans-layout-category .position>ul>li.selected>a,
	.xans-layout-category .position>ul>li.on>a {
	color: #aaa;
}

.xans-layout-category .sub-category {
	position: absolute;
	top: 60px;
	left: -15px;
	background: #fff;
	border: 1px solid #DADADA;
	opacity: 0.8;
	text-align: left;
}

.xans-layout-category .sub-category ul {
	padding: 8px 15px;
}

.xans-layout-category .sub-category li {
	width: 80px;
}

.xans-layout-category .sub-category li:first-child {
	border-left: 0;
}

.xans-layout-category .sub-category li:first-child a {
	border-top-color: #fff;
}

.xans-layout-category .sub-category a {
	display: block;
	font-size: 10px;
	color: #333;
	text-decoration: none;
	font-weight: 600;
	font-family: 'Open Sans', sans-serif;
	line-height: 22px;
	text-transform: uppercase;
	letter-spacing: 0.07em;
}

.xans-layout-category .sub-category a:hover, .xans-layout-category .sub-category li.selected a
	{
	color: #aaa;
}

.xans-layout-footer {
	font-family: 'Open Sans', '맑은 고딕';
	text-transform: uppercase;
	position: relative;
	width: 1100px;
	margin: 0 auto;
}

.xans-layout-footer .utilMenu {
	overflow: hidden;
	line-height: 22px;
	*zoom: 1;
	letter-spacing: 0.07em;
	text-align: center;
	font-weight: 600;
	padding: 30px 0 0 0;
}

.xans-layout-footer .utilMenu a {
	padding: 0 0 0 20px;
	font-size: 10px;
	color: #333;
}

.xans-layout-footer .utilMenu a:hover {
	color: #999;
}

.xans-layout-footer .insta {
	text-align: center;
	padding: 10px 0 0 0;
}

.xans-layout-footer .insta p a {
	font-family: 'Open Sans', '맑은 고딕';
	text-transform: uppercase;
	font-size: 10px;
	color: #444;
	font-weight: 600;
	letter-spacing: 0.07em;
	text-align: center;
	line-height: 30px;
}

.xans-layout-footer .insta p:first-child {
	padding: 0 0 4px;
}

.xans-layout-footer .insta p img:hover {
	opacity: 0.9;
}

.xans-layout-footer .cscenter {
	text-align: center;
	font-size: 11px;
	color: #444;
	line-height: 25px;
	padding: 0 70px 0 120px;
	float: left;
}

.xans-layout-footer .cscenter p {
	font-family: '맑은 고딕';
}

.xans-layout-footer .cscenter .cscenterh {
	font-family: 'Open Sans', '맑은 고딕';
	font-weight: 600;
}

.xans-layout-footer .cscenter strong {
	font-size: 13px;
	color: #444;
}

.xans-layout-footer .cscenter p:first-child {
	padding: 0 0 12px;
}

.xans-layout-footer .address {
	color: #444;
	line-height: 25px;
	text-align: center;
	font-family: '맑은 고딕';
	font-size: 11px;
	letter-spacing: 0em;
	float: left;
}

.xans-layout-footer .address p:first-child {
	padding: 0 0 12px;
}

.xans-layout-footer .address span {
	padding: 0 10px 0 20px;
}

.xans-layout-footer .address span a {
	color: #444;
}

.xans-layout-footer .copyright {
	color: #666;
	font-size: 10px;
	line-height: 26px;
	text-align: center;
	padding: 70px 160px 10px 0;
	clear: both;
}

.xans-layout-footer .copyright a {
	color: #666;
}

.xans-layout-footer .hosting {
	position: absolute;
	right: 300px;
	bottom: 14px;
	opacity: 0.7;
}

.xans-layout-footer .hosting a {
	padding: 0 0 0 8px;
}

.xans-instagramwidget-display {
	margin: 0 auto;
	padding: 0px;
	text-align: center;
}

.xans-instagramwidget-display h2 {
	margin: 0 0 15px;
	font-weight: normal;
}

.xans-instagramwidget-display h2 a {
	font-size: 26px;
	color: #2e2e2e;
	font-family: "나눔 고딕", 'Nanum Gothic';
	text-decoration: none;
}

.xans-instagramwidget-display .idTag {
	position: relative;
	display: inline-block;
	height: 25px;
	margin: 0 0 25px;
	line-height: 25px;
	white-space: nowrap;
	background: #3d3d3d;
}

.xans-instagramwidget-display .idTag a {
	display: inline-block;
	margin: 0 2px;
	color: #fffeff;
	font-size: 12px;
	font-weight: normal;
	text-decoration: none;
}

.xans-instagramwidget-display .idTag:before,
	.xans-instagramwidget-display .idTag:after {
	content: "";
	position: absolute;
	top: 0;
	display: inline-block;
	width: 15px;
	height: 25px;
	background:
		url("//img.echosting.cafe24.com/apps/instagram-widget/skin1/bg_tag.png")
		no-repeat 0 0;
}

.xans-instagramwidget-display .idTag:before {
	left: -15px;
}

.xans-instagramwidget-display .idTag:after {
	right: -15px;
	background-position: 100% 0;
}

.xans-instagramwidget-display .thumb.fadeIn li a {
	opacity: 0.3;
	filter: alpha(opacity = 30);
}

.xans-instagramwidget-display .thumb.fadeIn li a:hover {
	filter: alpha(opacity = 100);
	opacity: 1;
	transition: opacity 0.8s;
	-webkit-transition: opacity 0.8s;
	-moz-transition: opacity 0.8s;
	-o-transition: opacity 0.8s;
}

.xans-instagramwidget-display .thumb.fadeOut li a:hover {
	filter: alpha(opacity = 30);
	opacity: 0.3;
	transition: opacity 0.8s;
	-webkit-transition: opacity 0.8s;
	-moz-transition: opacity 0.8s;
	-o-transition: opacity 0.8s;
}

.xans-instagramwidget-display.typeGrid .thumb {
	overflow: hidden;
}

.xans-instagramwidget-display.typeGrid .thumb ul {
	display: table;
	margin: 0 auto;
}

.xans-instagramwidget-display.typeGrid .thumb ul:after {
	content: "";
	display: block;
	clear: both;
}

.xans-instagramwidget-display.typeGrid .thumb.border li {
	border: 1px solid #b7b7b7;
}

.xans-instagramwidget-display.typeGrid .thumb li {
	position: relative;
	float: left;
	box-sizing: border-box;
	background: #fff;
}

.xans-instagramwidget-display.typeGrid .thumb li a {
	display: block;
}

.xans-instagramwidget-display.typeGrid .thumb li .play {
	overflow: hidden;
	display: inline-block;
	position: absolute;
	right: 10px;
	top: 10px;
	width: 26px;
	height: 26px;
	font-size: 0;
	line-height: 0;
	text-indent: 150%;
	background:
		url("//img.echosting.cafe24.com/apps/instagram-widget/skin1/ico_play.png")
		no-repeat 0 0;
}

.xans-instagramwidget-display.typeBoard .thumb {
	overflow: hidden;
}

.xans-instagramwidget-display.typeBoard .thumb ul {
	display: table;
	margin: 0 auto;
}

.xans-instagramwidget-display.typeBoard .thumb ul:after {
	content: "";
	display: block;
	clear: both;
}

.xans-instagramwidget-display.typeBoard .thumb.border li {
	border-top: 1px solid #e3e3e3;
	border-left: 1px solid #d2d2d2;
	border-right: 1px solid #d2d2d2;
	border-bottom: 1px solid #bcbaba;
}

.xans-instagramwidget-display.typeBoard .thumb li {
	float: left;
	box-sizing: border-box;
	text-align: left;
	background: #fff;
}

.xans-instagramwidget-display.typeBoard .thumb li .img {
	position: relative;
	margin: 5px 5px 0;
	display: block;
	font-size: 0;
}

.xans-instagramwidget-display.typeBoard .thumb li .play {
	overflow: hidden;
	display: inline-block;
	position: absolute;
	right: 11px;
	top: 13px;
	width: 26px;
	height: 26px;
	font-size: 0;
	line-height: 0;
	text-indent: 150%;
	background:
		url("//img.echosting.cafe24.com/apps/instagram-widget/skin1/ico_play.png")
		no-repeat 0 0;
}

.xans-instagramwidget-display.typeBoard .thumb li .writer {
	padding: 8px 10px;
}

.xans-instagramwidget-display.typeBoard .thumb li .writer a {
	overflow: hidden;
	display: inline-block;
	width: 26px;
	height: 26px;
	vertical-align: middle;
	border-radius: 14px;
	opacity: 1;
}

.xans-instagramwidget-display.typeBoard .thumb li .writer img {
	width: 26px;
	height: 26px;
}

.xans-instagramwidget-display.typeBoard .thumb li .writer .user {
	margin: 0 0 0 4px;
	font-size: 12px;
	font-weight: bold;
	color: #000;
	vertical-align: middle;
}

.xans-instagramwidget-display.typeBoard .thumb li .comment {
	position: relative;
	min-height: 106px;
	padding: 13px 15px 13px 34px;
	color: #757575;
	font-size: 11px;
	line-height: 20px;
	text-align: left;
	box-sizing: border-box;
	background: #f2f2f2;
}

.xans-instagramwidget-display.typeBoard .thumb li .comment:before {
	content: "";
	position: absolute;
	left: 20px;
	top: 14px;
	width: 7px;
	height: 7px;
	border-bottom: 1px dotted #373737;
	border-left: 1px dotted #373737;
}

.xans-instagramwidget-display.typeScrolling {
	padding: 35px 15px 20px;
}

.xans-instagramwidget-display.typeScrolling .thumb {
	overflow: hidden;
	position: relative;
	margin: 0 auto;
}

.xans-instagramwidget-display.typeScrolling .thumb .list {
	overflow: hidden;
	margin: 0 25px;
	white-space: nowrap;
}

.xans-instagramwidget-display.typeScrolling .thumb li {
	position: relative;
	margin: 0 0 0 7px;
	display: inline-block;
	box-sizing: border-box;
	background: #fff;
}

.xans-instagramwidget-display.typeScrolling .thumb li:first-child {
	margin-left: 0;
}

.xans-instagramwidget-display.typeScrolling .thumb li a {
	display: block;
}

.xans-instagramwidget-display.typeScrolling .thumb li .play {
	overflow: hidden;
	display: inline-block;
	position: absolute;
	right: 10px;
	top: 10px;
	width: 26px;
	height: 26px;
	font-size: 0;
	line-height: 0;
	text-indent: 150%;
	background:
		url("//img.echosting.cafe24.com/apps/instagram-widget/skin1/ico_play.png")
		no-repeat 0 0;
}

.xans-instagramwidget-display.typeScrolling .thumb .button .prev,
	.xans-instagramwidget-display.typeScrolling .thumb .button .next {
	position: absolute;
	top: 50%;
	width: 15px;
	height: 26px;
	margin: -13px 0 0;
	font-size: 0;
	line-height: 0;
	text-indent: 150%;
	background:
		url("//img.echosting.cafe24.com/apps/instagram-widget/skin1/btn_scrolling.png")
		no-repeat 0 0;
}

.xans-instagramwidget-display.typeScrolling .thumb .button .prev {
	left: 0;
}

.xans-instagramwidget-display.typeScrolling .thumb .button .next {
	right: 0;
	background-position: 100% 0;
}

.xans-instagramwidget-display.typeSlideshow .thumb {
	position: relative;
	overflow: hidden;
	margin: 0 auto;
}

.xans-instagramwidget-display.typeSlideshow .thumb li {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 10;
	padding: 10px;
	background: #fff;
	border-left: 1px solid #dedddd;
	border-right: 1px solid #dedddd;
	border-bottom: 1px solid #b5b2b2;
}

.xans-instagramwidget-display.typeSlideshow .thumb li a {
	display: block;
}

.xans-instagramwidget-display.typeSlideshow .thumb li .play {
	overflow: hidden;
	display: inline-block;
	position: absolute;
	right: 20px;
	top: 20px;
	width: 26px;
	height: 26px;
	font-size: 0;
	line-height: 0;
	text-indent: 150%;
	background:
		url("//img.echosting.cafe24.com/apps/instagram-widget/skin1/ico_play.png")
		no-repeat 0 0;
}

.xans-layout-conversionpc a {
	display: block;
	padding: 21px 0 22px;
	border: 2px solid #9d9db0;
	border-radius: 4px;
	font-weight: bold;
	font-size: 38px;
	color: #63666e;
	text-align: center;
}

.xans-layout-conversionpc a {
	background: #fff
		-webkit-gradient(linear, left top, left bottom, from(#fff),
		to(#f2f2f2));
	background: #fff -moz-linear-gradient(top, #fff, #f2f2f2);
}

.xans-layout-conversionpc a:hover {
	text-decoration: none;
}

.xans-layout-conversionpc a span {
	padding: 0 0 0 42px;
	background:
		url("http://img.echosting.cafe24.com/skin/base_ko_KR/layout/ico_mobile.png")
		no-repeat 0 50%;
	background-size: 27px 35px;
}
</style>