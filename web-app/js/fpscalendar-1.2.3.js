/* fpsCalendar, version 1.2.3
Copyright (c) 2009, Pavel S. Fedorov

fpsCalendar 1.2.2 is freely distributed under the terms of new BSD-style license,
for details, see "LICENSE.txt" file that comes with this distribution package.

For documentation visit the project's web page: http://code.google.com/p/fpscalendar/

Tested to work with Prototype Framework version 1.6.0.3
*/
function fpsCalendar(elem, params) {
	elem.fpsCalendar = this;
	Object.extend(this, {
		otherContainers: [],
		enableClear: true,
		yearRange: fpsCalendar.defaultYearRange,
		userAfterInsertDate: null,
		dateFormat: fpsCalendar.defaultDateFormat,
		emptyValue: fpsCalendar.defaultEmptyValue
	});
	if (params) Object.extend(this, params);
	return this;
}
fpsCalendar.prototype.appendContainer = function (elem, params) {
	elem.fpsCalendar = {
		dateFormat: fpsCalendar.defaultDateFormat,
		emptyValue: fpsCalendar.defaultEmptyValue
	}
	if (params) Object.extend(elem.fpsCalendar, params);
	this.otherContainers.push(elem);
	return this;
}
Object.extend(fpsCalendar, {
	version: '1.2.3',
	defaultYearRange: [90, 10],
	defaultEmptyValue: '',
	defaultDateFormat: 'native',
	dateFormats: {
		// DD.MM.YYYY
		'native': {
			'extractDate': function (str) {
				var d = str.split('.');
				if (d.length == 3) return [parseInt(d[2]), parseInt(d[1]), parseInt(d[0])];
				else {d = new Date(); return [d.getFullYear(), d.getMonth() + 1, d.getDate()];}
			},
			'buildDate': function (year, month, day) {
				return day.toPaddedString(2) + '.' + month.toPaddedString(2) + '.' + year.toPaddedString(4);
			}
		},
		// YYYY-MM-DD
		'database': {
			'extractDate': function (str) {
				var d = str.split('-');
				if (d.length == 3) return [parseInt(d[0]), parseInt(d[1]), parseInt(d[2])];
				else {d = new Date(); return [d.getFullYear(), d.getMonth() + 1, d.getDate()];}
			},
			'buildDate': function (year, month, day) {
				return year.toPaddedString(4) + '-' + month.toPaddedString(2) + '-' + day.toPaddedString(2);
			}
		},
		// MM/DD/YYYY
		'american': {
			'extractDate': function (str) {
				var d = str.split('/');
				if (d.length == 3) return [parseInt(d[2]), parseInt(d[0]), parseInt(d[1])];
				else {d = new Date(); return [d.getFullYear(), d.getMonth() + 1, d.getDate()];}
			},
			'buildDate': function (year, month, day) {
				return month.toPaddedString(2) + '/' + day.toPaddedString(2) + '/' + year.toPaddedString(2);
			}
		}
	},
	killFadeIn: false,
	fadeInTime: 300,
	currentElement: null,
	currentYear: new Date().getFullYear(),
	currentMonth: new Date().getMonth() + 1,
	currentDay: new Date().getDate(),
	extractedDate: [new Date().getFullYear(), new Date().getMonth() + 1, new Date().getDate()],
	calendarImg: 'fpscalendar.gif',
	daysOfWeek: ['SU', 'MO', 'TU', 'WE', 'TH', 'FR', 'SA'],
	firstDayOfWeek: 1,
	months: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
	monthSelect: null,
	decreaseMonthLink: null,
	increaseMonthLink: null,
	yearSelect: null,
	decreaseYearLink: null,
	increaseYearLink: null,
	mainDiv: new Element('div', {'class': 'fpsCalendar'}),
	iframe: null,
	isInsertedToBody: false,
	isInited: false,
	todayText: 'Today',
	insertToday: function (event) {
		var fc = fpsCalendar;
		fc.currentYear = new Date().getFullYear();
		fc.currentMonth = new Date().getMonth() + 1;
		fc.currentDay = new Date().getDate();
		fc.insertDate();
		Event.stop(event);
		fc.hide();
		return true;
	},
	clearText: 'Clear',
	clearLink: null,
	userAfterInsertDate: null,
	init: function () {
		var fc = fpsCalendar;
		if (fc.isInited) return true;
		fc.insertToBody();
		var div = fc.mainDiv;
		div.observe('click', fc.doNothing);
		var table = new Element('table', {'class': 'fpsCalendar'});
		div.insert(table);
		var i, td;
		for (i = 1; i <= 9; i++) $(table.insertRow(0));
		var tr;
		tr = table.descendants()[table.descendants().length-1];
		td = new Element('td', {'class': 'fpsCalendar', colspan: 7});
		tr.insert(td);
		td.insert(new Element('a', {href: '#', 'class': 'fpsCalendar'}).addClassName('fpsCalendarFontSize1').update('['+fc.todayText+']').observe('click', fc.insertToday)).insert('&nbsp;&nbsp;');
		fc.clearLink = new Element('a', {href: '#', 'class': 'fpsCalendar'}).addClassName('fpsCalendarFontSize1').update('['+fc.clearText+']').observe('click', fc.clearContainers);
		td.insert(fc.clearLink);
		tr = table.descendants()[1];
		td = new Element('th', {'class': 'fpsCalendar', colspan: 7});
		tr.insert(td);
		fc.monthSelect = new Element('select', {'class': 'fpsCalendar'}).observe('change', fc.changeMonth);
		fc.decreaseMonthLink = new Element('a', {href: '#', 'class': 'fpsCalendar'}).addClassName('fpsCalendarFontSize2').update('&lt;').observe('click', fc.decreaseMonth);
		fc.increaseMonthLink = new Element('a', {href: '#', 'class': 'fpsCalendar'}).addClassName('fpsCalendarFontSize2').update('&gt;').observe('click', fc.increaseMonth);
		fc.yearSelect = new Element('select', {'class': 'fpsCalendar'}).observe('change', fc.changeYear);
		fc.decreaseYearLink = new Element('a', {href: '#', 'class': 'fpsCalendar'}).addClassName('fpsCalendarFontSize2').update('&lt;').observe('click', fc.decreaseYear);
		fc.increaseYearLink = new Element('a', {href: '#', 'class': 'fpsCalendar'}).addClassName('fpsCalendarFontSize2').update('&gt;').observe('click', fc.increaseYear);
		td.insert(fc.decreaseMonthLink).insert(fc.monthSelect).insert(fc.increaseMonthLink).insert('&nbsp;&nbsp;').insert(fc.decreaseYearLink).insert(fc.yearSelect).insert(fc.increaseYearLink);
		fc.fillMonthSelect();
		tr = tr.next();
		var day = fc.firstDayOfWeek;
		for (i = 1; i <= 7; i++) {
			if (day > 6) day = 0;
			td = new Element('th', {'class': 'fpsCalendar'});
			td.update(fc.daysOfWeek[day]);
			tr.insert(td);
			day++;
		}
		for (j = 1; j <= 6; j++) {
			tr = tr.next();
			for (i = 0; i <= 6; i++) {td = new Element('td', {'class': 'fpsCalendar'}); tr.insert(td);}
		}
		fc.isInited = true;
	},
	insertToBody: function () {
		var fc = fpsCalendar;
		if (!fc.isInsertedToBody) {
			$(document.body).insert(fc.mainDiv);
			if (Prototype.Browser.IE) {
				var i = new Element('iframe', {frameBorder: 0, height: 0, width: 0, 'class': 'fpsCalendar'});
				fc.iframe = i;
				document.body.insert(i);
			}
			fc.isInsertedToBody = true;
		}
	},
	doNothing: function (event) {event.stop(); return true;},
	getDayOffset: function () {
		var fc = fpsCalendar;
		var day = new Date(fc.currentYear, fc.currentMonth-1, 1).getDay();
		var j, i = fc.firstDayOfWeek;
		for (j = 0; j <= 6; j++) {
			if (i == day) return j;
			i++;
			if (i > 6) i = 0;
		}
	},
	getNumberOfDaysInMonth: function () {return new Date(fpsCalendar.currentYear, fpsCalendar.currentMonth, 0).getDate();},
	fillMonthSelect: function () {
		var opt, i;
		for (i = 1; i <= fpsCalendar.months.length; i++) {
			opt = new Element('option', {value: i});
			opt.text = fpsCalendar.months[i-1];
			fpsCalendar.monthSelect.options[i-1] = opt;
		}
	},
	show: function (img) {
		var fc = fpsCalendar;
		fc.init();
		fc.currentElement = img.fpsCalendarMainContainer;
		fc.extractDate();
		fc.updateCalendar(true);
		fc.killFadeIn = false;
		fc.mainDiv.style.opacity = 0;
		if (fc.currentElement.fpsCalendar.enableClear) fc.clearLink.show();
		else fc.clearLink.hide();
		fc.mainDiv.style.top = 0;
		fc.mainDiv.style.left = 0;
		fc.mainDiv.show();
		var windowHeight = 0, windowWidth = 0;
		// for Opera, Safari, Firefox
		if (window.innerHeight) {
			windowHeight = window.innerHeight;
			windowWidth = window.innerWidth;
		}
		// for IE
		else {
			windowHeight = document.body.getHeight();
			windowWidth = document.body.getWidth();
		}
		if (img.cumulativeOffset().top - img.cumulativeScrollOffset().top + fc.mainDiv.getHeight() > windowHeight && img.cumulativeOffset().top - img.cumulativeScrollOffset().top > fc.mainDiv.getHeight()) {
				fc.mainDiv.style.top = img.cumulativeOffset().top - fc.mainDiv.getHeight() + img.getHeight();
		}
		else fc.mainDiv.style.top = img.cumulativeOffset().top;
		if (img.cumulativeOffset().left - img.cumulativeScrollOffset().left + fc.mainDiv.getWidth() > windowWidth && img.cumulativeOffset().left - img.cumulativeScrollOffset().left > fc.mainDiv.getWidth()) {
				fc.mainDiv.style.left = img.cumulativeOffset().left - fc.mainDiv.getWidth() + img.getWidth();
		}
		else fc.mainDiv.style.left = img.cumulativeOffset().left;
		if (Prototype.Browser.IE) {
			fc.iframe.style.top = fc.mainDiv.style.top; fc.iframe.style.left = fc.mainDiv.style.left;
			fc.iframe.width = fc.mainDiv.getWidth(); fc.iframe.height = fc.mainDiv.getHeight();
			fc.mainDiv.style.opacity = 1;
		}
		new PeriodicalExecuter(fc.fadeIn, fc.fadeInTime/10000);
		$(document).observe('click', fc.hide);
	},
	fadeIn: function (updater) {
		var fc = fpsCalendar;
		if (fc.fadeInTime == 0) {
			fc.mainDiv.style.opacity = 1;
			updater.stop();
			fc.killFadeIn = false;
			return;
		}
		if (fc.killFadeIn || parseFloat(fc.mainDiv.style.opacity) == 1) {updater.stop(); fc.killFadeIn = false;}
		else fc.mainDiv.style.opacity = parseFloat(fc.mainDiv.style.opacity) + 0.1;
	},
	calendarClick: function (event) {
		var el = Event.element(event);
		Event.stop(event);
		if (el.fpsCalendarMainContainer) fpsCalendar.show(el);
		else fpsCalendar.show(el.fpsCalendar.img);
		return false;
	},
	hide: function () {
		var fc = fpsCalendar;
		fc.killFadeIn = true;
		fc.mainDiv.hide();
		if (Prototype.Browser.IE) {
			fc.iframe.width = 0; fc.iframe.height = 0;
			fc.iframe.style.top = 0; fc.iframe.style.left = 0;
		}
		$(document).stopObserving('click', fc.hide);
		return true;
	},
	updateCalendar: function (redrawYearSelect) {
		var fc = fpsCalendar;
		fc.monthSelect.value = fc.currentMonth;
		if (redrawYearSelect) fc.fillYearSelect();
		var j, td, tr = fc.mainDiv.firstDescendant().childElements()[0].childElements()[1];
		var startCell = fc.getDayOffset();
		var numberOfDays = fc.getNumberOfDaysInMonth();
		var day = 1, descendants;
		for (j = 1; j <= 6; j++) {
			tr = tr.next();
			descendants = tr.descendants();
			for (i = 0; i <= 6; i++) {
				td = descendants[i];
				td.update('&nbsp;');
				td.removeClassName('fpsCalendarActive').removeClassName('fpsCalendarInactive').removeClassName('fpsCalendarCurrent');
				if (j == 1 && i < startCell) {td.addClassName('fpsCalendarInactive'); continue;}
				if (day <= numberOfDays) {
					if (day == fc.extractedDate[2] && fc.currentMonth == fc.extractedDate[1] && fc.currentYear == fc.extractedDate[0]) {
						td.addClassName('fpsCalendarCurrent');
					}
					else td.addClassName('fpsCalendarActive');
					td.update(day);
					td.fpsCalendarDay = day;
					day++;
					td.observe('click', fc.dayClick);
				}
				else td.addClassName('fpsCalendarInactive');
			}
		}
	},
	fillYearSelect: function () {
		var fc = fpsCalendar;
		fc.yearSelect.options.length = 0;
		var opt, i, number = 0;
		for (i = fc.currentYear - fc.currentElement.fpsCalendar.yearRange[0]; i <= fc.currentYear + fc.currentElement.fpsCalendar.yearRange[1]; i++) {
			opt = new Element('option', {value: i});
			opt.text = i;
			fc.yearSelect.options[number++] = opt;
		}
		fc.yearSelect.value = fc.currentYear;
	},
	changeMonth: function (direction) {
		var fc = fpsCalendar;
		var redrawYearSelect = true;
		if (Object.isString(direction)) {
			if (direction == '-') {
				if (fc.currentMonth == 1) {fc.currentMonth = 12; fc.currentYear--;}
				else {fc.currentMonth--; redrawYearSelect = false;}
			}
			if (direction == '+') {
				if (fc.currentMonth == 12) {fc.currentMonth = 1; fc.currentYear++;}
				else {fc.currentMonth++; redrawYearSelect = false;}
			}
		}
		else {fc.currentMonth = parseInt(fc.monthSelect.value); redrawYearSelect = false;}
		fc.updateCalendar(redrawYearSelect);
		return true;
	},
	decreaseMonth: function () {fpsCalendar.changeMonth('-'); return false;},
	increaseMonth: function () {fpsCalendar.changeMonth('+'); return false;},
	changeYear: function (direction) {
		var fc = fpsCalendar;
		if (Object.isString(direction)) {
			if (direction == '+') fc.currentYear++;
			if (direction == '-') fc.currentYear--;
		}
		else {fc.currentYear = parseInt(fc.yearSelect.value);}
		fc.updateCalendar(true);
		return true;
	},
	decreaseYear: function () {fpsCalendar.changeYear('-'); return false;},
	increaseYear: function () {fpsCalendar.changeYear('+'); return false;},
	insertDate: function () {
		var fc = fpsCalendar;
		fc.setContainerValue(fc.currentElement, fc.dateFormats[fc.currentElement.fpsCalendar.dateFormat].buildDate(fc.currentYear, fc.currentMonth, fc.currentDay));
		var i;
		for (i = 0; i < fc.currentElement.fpsCalendar.otherContainers.length; i++) {
			fc.setContainerValue(fc.currentElement.fpsCalendar.otherContainers[i], fc.dateFormats[fc.currentElement.fpsCalendar.otherContainers[i].fpsCalendar.dateFormat].buildDate(fc.currentYear, fc.currentMonth, fc.currentDay));
		}
		if (fc.currentElement.fpsCalendar.userAfterInsertDate) {
			fc.currentElement.fpsCalendar.userAfterInsertDate(fc.currentElement, fc.currentYear, fc.currentMonth, fc.currentDay);
		}
	},
	extractDate: function () {
		var fc = fpsCalendar;
		var dateArr = fc.dateFormats[fc.currentElement.fpsCalendar.dateFormat].extractDate(fc.getContainerValue(fc.currentElement));
		fc.currentYear = dateArr[0];
		fc.currentMonth = dateArr[1];
		fc.currentDay = dateArr[2];
		fc.extractedDate = dateArr;
	},
	dayClick: function (event) {
		fpsCalendar.currentDay = this.fpsCalendarDay;
		fpsCalendar.insertDate();
		Event.stop(event);
		fpsCalendar.hide();
		return true;
	},
	clearContainers: function (event) {
		var fc = fpsCalendar;
		fc.setContainerValue(fc.currentElement, fc.currentElement.fpsCalendar.emptyValue);
		fc.currentElement.fpsCalendar.otherContainers.each(function (elem) {fc.setContainerValue(elem, elem.fpsCalendar.emptyValue);});
		Event.stop(event);
		fc.hide();
	},
	setContainerValue: function (elem, value) {
		switch (elem.nodeName) {
			case 'INPUT': elem.value = value; break;
			default: elem.innerHTML = value;
		}
	},
	getContainerValue: function (elem) {
		switch (elem.nodeName) {
			case 'INPUT': return elem.value;
			default: return elem.innerHTML;
		}
	},
	assignTo: function (elem, params) {
		if (!params) params = {};
		var img = new Element('img', {src: fpsCalendar.calendarImg, 'class': 'fpsCalendar'}).observe('click', fpsCalendar.calendarClick);
		img.fpsCalendarMainContainer = elem;
		params['img'] = img;
		elem.observe('click', fpsCalendar.calendarClick);
		Element.insert(elem, {after: img});
		if (elem.nodeName == 'INPUT' && elem.type == 'text') {elem.readOnly = true;}
		return new fpsCalendar(elem, params);
	},
	setParams: function (params) {Object.extend(fpsCalendar, params);}
});