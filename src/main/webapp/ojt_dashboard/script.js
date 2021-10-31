/**
 * 
 */

const draggable_list=document.getElementById('draggable-list');
const check=document.getElementById('check');

const richestPeople=[
	'이건희',
	'정주용',
	'이재용',
	'박정희',
	'사과',
	'문재욱',
	'테스터',
	'관리자',
	'단군왕검',
	'투썸'
];

// Store list items
const listItems=[];

let dragStartIndex;

createList();

/*
const numbers=[1, 3, 110, 40, 302];
console.log(
	numbers.sort(function(a, b){
		return a-b;
	})
);
*/

// Insert list items into DOM
	// ES6 - 화살표 함수 check...;;
function createList() {
	[...richestPeople]
		.map(a => ({value: a, sort: Math.random()}))
		.sort((a,b) => a.sort - b.sort)
		.map(a => (a.value))
		.forEach((person, index) => {
			console.log(person);
			const listItem=document.createElement('li');
			
			listItem.setAttribute('data-index', index);
			
			listItem.innerHTML = `
				<span class="number">${index +1}</span>
				<div class="draggable" draggable="true">
					<p class="person-name">${person}</p>
					<i class="fas fa-grip-lines"></i>
				</div>
			`;
			
			listItems.push(listItem);
			
			draggable_list.appendChild(listItem);
		});
		
	addEventListeners();	
}

function dragStart(){
	//console.log('Event: ', 'dragstart');
	dragStartIndex=this.closest('li').getAttribute('data-index');
	console.log(dragStartIndex);
}
function dragEnter(){
	//console.log('Event: ', 'dragenter');
	this.classList.add('over');
}
function dragLeave(){
	//console.log('Event: ', 'dragleave');
	this.classList.remove('over');
}
function dragOver(e){
	//console.log('Event: ', 'dragover');
	e.preventDefault();
}
function dragDrop(){
	//console.log('Event: ', 'dragdrop');
	const dragEndIndex=this.getAttribute('data-index');
	swapItems(dragStartIndex, dragEndIndex);
	
	this.classList.remove('over');
}

function swapItems(fromIndex, toIndex){
	// console.log(123);
	const itemOne=listItems[fromIndex].querySelector('.draggable');
	const itemTwo=listItems[toIndex].querySelector('.draggable');
	
	// console.log(itemOne, itemTwo);
	listItems[fromIndex].appendChild(itemTwo);
	listItems[toIndex].appendChild(itemOne);
}


function addEventListeners(){
	const draggables=document.querySelectorAll('.draggable');
	const dragListItems=document.querySelectorAll('.draggable-list li');
	
	draggables.forEach(draggable => {
		draggable.addEventListener('dragstart', dragStart);
	})
	
	dragListItems.forEach(item => {
		item.addEventListener('dragover', dragOver);
		item.addEventListener('drop', dragDrop);
		item.addEventListener('dragenter', dragEnter);
		item.addEventListener('dragleave', dragLeave);
	})
}