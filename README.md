# SugarCRM-CheckboxMultiEnum
SugarCRM 6 Field that can be used to replace the standard MultiEnum (i.e., Multi-Select) with Checkboxes

## Installation
Copy the directory custom/include/SugarFields/Fields/CheckboxMultienum into your SugarCRM environment
Edit any editviewdefs.php and add **type** to any multienum field and change the field to a **CheckboxMultienum**

Turn _This_
```php
          array (
            'name' => 'multienum',
            'label' => 'LBL_MULTIENUM',
          ),
```
![Multi-Select](/images/multiselect.png)

_Into_

```php
          array (
            'name' => 'multienum',
            'type' => 'CheckboxMultienum'
            'label' => 'LBL_MULTIENUM',
          ),
```
![Multi-Select](/images/checkboxes.png)

You can also include **displayParams**
```php
          array (
            'name' => 'multienum',
            'type' => 'CheckboxMultienum'
            'label' => 'LBL_MULTIENUM',
            'displayParams' => 
             array (
              'size' => '400',  //in pixels
              'width' => '100'  //in %
            ),
          ),
```
