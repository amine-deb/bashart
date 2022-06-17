#         BASH LOOPS

## 1. WORD LIST TYPE
```bash
for WORD in "one" "two" "three"
do
  echo "$WORD"
done
```

or for string:
```bash
for month in Jan Feb Mar Apr May Jun
do
 echo "Month is $month"
done
```


## 2. LIST OF NUMBERS TYPE
```bash
for var in 1 2 3 4 5
do
 echo "Number is $var"
done
```

## 3. RABGE TYPE
```bash
for var in {10..15}
do
 echo "Number is $var"
done
```


## 4. INCREMENTED RANGE TYPE
```bash
for var in {0..10..2}
do
 echo "Number is $var"
done
```



## 5. ARRAY VARIABLE TYPE
```bash
CARS=('Maruti' 'Toyota' 'BMW' 'Tata' 'Datsun')
for car in "${CARS[@]}"; do
  echo "Car: $car"
done
```
or with loop inside the array:
```bash
i=1
weekdays="Mon Tue Wed Thu Fri"
for day in $weekdays
do
 echo "Weekday $((i++)): $day"
done
```


## 6. LOOP IN FOLDER TYPE
```bash
#The following example will change the extension of all files in the current directory from .php to .html
for file in *.php; do
  mv "$file" "${file%.php}.html"
  echo $file is renamed to "${file%.php}.html"
done

```

## 7. LOOP FROM TEXT TYPE
```bash
#domain.txt containe a domain name in each line 
for var in $(cat domain.txt)
do
  ping -c 1 "$var"
done
```

