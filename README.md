# Frequency Analysis
Frequency analysis for confirmed cases of COVID-19 in 17 countries. The fitted distributions are: One-Parameter Exponential, Two-Parameter Exponential and Gumbel. In addition, the frequencies of historical events expressed as a return period in days.


## Example

### MATLAB

```matlab
paises={'Spain','USA','France','UnitedKindom','Colombia','India','Brasil','Argentina','Indonesia','Iran','Germany','Mexico','Russia','Turkey','Italia','Polonia','China'};

for i=1:length(paises)
    fig=figure(i);   
    tag = strcat('dataset/',paises{i},'.txt');
    data = abs(fix(load(tag)));
    fnFrequencyAnalysis(data);
end
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## References

*  https://doi.org/10.3390/atmos10050257
*  https://doi.org/10.1016/j.scitotenv.2020.138817

## Intellectual author
* **Alfonso Gutierrez-Lopez** - *alfonso.gutierrez@uaq.mx* -

## Code
* **Daniel Cantón-Enriquez** - *daniel.canton@uaq.mx*

## Contributors
* **Jose A. Niembro-Ceceña** - *jose.a.niembro@gmail.com*
* **Martin Muñoz Mandujano** - *martin.munoz.mandujano@uaq.mx*
* **Daniel Alarcon** - *dalarcon15@alumnos.uaq.mx*
* **Jorge Arcadia Guerrero** - *jarcadia530@alumnos.uaq.mx*
* **Ivan Gonzalez Garcia** - *ivan.glez@uaq.mx*
* **Agueda Areli Montes Gutierrez** - *aguedamogu@gmail.com*

## License
This project is licensed under the GPL-3.0 License
