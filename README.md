# oat-datepicker

`oat-datepicker` is the extracted Oat UI datepicker extension.

It includes:
- `<ot-datepicker>`
- `<ot-date-range>`

## Install

Load Oat core first, then this extension:

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/tusharneje-07/oat@main/dist/oat.min.css" />
<script src="https://cdn.jsdelivr.net/gh/tusharneje-07/oat@main/dist/oat.min.js" defer></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/tusharneje-07/oat-datepicker@main/dist/oat-datepicker.min.css" />
<script src="https://cdn.jsdelivr.net/gh/tusharneje-07/oat-datepicker@main/dist/oat-datepicker.min.js" defer></script>
```

## Usage

```html
<ot-datepicker>
  <input type="text" name="start_date" value="2025-06-01" placeholder="Pick a date" />
</ot-datepicker>
```

Date range:

```html
<ot-date-range>
  <ot-datepicker data-range-start>
    <input type="text" name="from_date" placeholder="From" />
  </ot-datepicker>
  <ot-datepicker data-range-end>
    <input type="text" name="to_date" placeholder="To" />
  </ot-datepicker>
</ot-date-range>
```

## API

```js
const picker = document.querySelector('ot-datepicker');

picker.setDate('2025-06-20');
picker.fetchDate();
picker.fetchISODate();
picker.fetchDisplayDate();
picker.setMinDate('2025-06-01');
picker.setMaxDate('2025-06-30');
picker.clearDate();
picker.open();
picker.close();
```

Events:
- `ot-date-change` with `{ value, date }`
- `ot-date-range-change` with `{ from, to, fromDate, toDate }`

## Build

```bash
make dist
```

Generated artifacts are committed in `dist/`.

## License

MIT
