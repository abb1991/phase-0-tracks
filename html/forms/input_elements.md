#html commands
``<fieldset>``appears to set a box around its contents. It seems to be a body-element.

``<input>`` seems to create a form box. It has 2 attributes, type and name. The type seems to determine acceptable input, and the name appears to be variable that the input will be assigned to. Maybe the name "fullname" is meant to be serve as a helpful reference for the string that is being inputted. There is also a "checkbox" attribute that creates a checkbox for the user.

``<label>`` just prints some text near the form, to let the user know what the form is asking for.

``<input placeholder=>`` allows the editor to place some text within the form box, providing more helpful information for the user.

``<select>`` creates a dropdown menu. The menu is populated with items using the ``<option>`` tag.It appears that there is a type in this example, though. Our instict is that the "value" of each option should be different, so that later the option value could be referenced intelligently.

``<button>`` creates a button of the "submit" type. It doesn't have a name attribute because it doesn't need to be referenced later on.