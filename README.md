# Practical 4 — Event Registration Portal

**Subject:** .NET Technologies  
**Aim:** Build an Online Event Registration Portal using ASP.NET Controls and Validation.

## Features

- Name and enrollment number fields with required-field validation
- Department dropdown
- Email and 10-digit mobile number fields
- Gender radio buttons
- Tech stack checkboxes
- Multiple event selection
- Terms and conditions validation
- Registration success output showing submitted details

## Project files

```text
Practical-04-Event-Registration-Portal/
├── Event-Registration-Form.aspx
├── Event-Registration-Form.aspx.cs
└── README.md
```

## Run in Visual Studio

1. Create an **ASP.NET Web Application (.NET Framework)** using the **Web Forms** template.
2. Set the project namespace to `Practical_04_Event_Registration_Portal`, or update the page `Inherits` value and C# namespace to match your project.
3. Add `Event-Registration-Form.aspx` and its code-behind file to the project.
4. Run the application and open `Event-Registration-Form.aspx`.

> This ZIP contains the practical source files, not a complete Visual Studio solution. Add them to an ASP.NET Web Forms project to run them.

## Concepts demonstrated

- ASP.NET server controls: `TextBox`, `DropDownList`, `RadioButton`, `CheckBox`, `ListBox`, and `Button`
- Validation controls: `RequiredFieldValidator`, `RegularExpressionValidator`, and `CustomValidator`
- Code-behind event handling in C#

This is a classroom demonstration. It does not save registrations to a database.
