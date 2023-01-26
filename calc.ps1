Add-Type -AssemblyName System.Windows.Forms
#Tworzenie okna głównego
$form = New-Object System.Windows.Forms.Form
$form.Text = "Calculator"
$form.Size = New-Object System.Drawing.Size(250,250)
#-----------------------------

#Tworzenie okienka wyniku
$result = New-Object System.Windows.Forms.TextBox
$result.Location = New-Object System.Drawing.Size(10,10)
$result.Size = New-Object System.Drawing.Size(230,20)
$form.Controls.Add($result)
#--------------------------

#Dodawanie przycisków
$button1 = New-Object System.Windows.Forms.Button
$button1.Location = New-Object System.Drawing.Size(10,40)
$button1.Size = New-Object System.Drawing.Size(50,50)
$button1.Text = "1"
$form.Controls.Add($button1)

$button2 = New-Object System.Windows.Forms.Button
$button2.Location = New-Object System.Drawing.Size(70,40)
$button2.Size = New-Object System.Drawing.Size(50,50)
$button2.Text = "2"
$form.Controls.Add($button2)

$button3 = New-Object System.Windows.Forms.Button
$button3.Location = New-Object System.Drawing.Size(130,40)
$button3.Size = New-Object System.Drawing.Size(50,50)
$button3.Text = "3"
$form.Controls.Add($button3)

$button4 = New-Object System.Windows.Forms.Button
$button4.Location = New-Object System.Drawing.Size(10,100)
$button4.Size = New-Object System.Drawing.Size(50,50)
$button4.Text = "4"
$form.Controls.Add($button4)

$button5 = New-Object System.Windows.Forms.Button
$button5.Location = New-Object System.Drawing.Size(70,100)
$button5.Size = New-Object System.Drawing.Size(50,50)
$button5.Text = "5"
$form.Controls.Add($button5)

$button6 = New-Object System.Windows.Forms.Button
$button6.Location = New-Object System.Drawing.Size(130,100)
$button6.Size = New-Object System.Drawing.Size(50,50)
$button6.Text = "6"
$form.Controls.Add($button6)

$button7 = New-Object System.Windows.Forms.Button
$button7.Location = New-Object System.Drawing.Size(10,160)
$button7.Size = New-Object System.Drawing.Size(50,50)
$button7.Text = "7"
$form.Controls.Add($button7)

$button8 = New-Object System.Windows.Forms.Button
$button8.Location = New-Object System.Drawing.Size(70,160)
$button8.Size = New-Object System.Drawing.Size(50,50)
$button8.Text = "8"
$form.Controls.Add($button8)

$button9 = New-Object System.Windows.Forms.Button
$button9.Location = New-Object System.Drawing.Size(130,160)
$button9.Size = New-Object System.Drawing.Size(50,50)
$button9.Text = "9"
$form.Controls.Add($button9)

$button0 = New-Object System.Windows.Forms.Button
$button0.Location = New-Object System.Drawing.Size(70,220)
$button0.Size = New-Object System.Drawing.Size(50,50)
$button0.Text = "0"
$form.Controls.Add($button0)

$buttonAdd = New-Object System.Windows.Forms.Button
$buttonAdd.Location = New-Object System.Drawing.Size(190,40)
$buttonAdd.Size = New-Object System.Drawing.Size(50,50)
$buttonAdd.Text = "+"
$form.Controls.Add($buttonAdd)

$buttonSub = New-Object System.Windows.Forms.Button
$buttonSub.Location = New-Object System.Drawing.Size(190,100)
$buttonSub.Size = New-Object System.Drawing.Size(50,50)
$buttonSub.Text = "-"
$form.Controls.Add($buttonSub)

$buttonMul = New-Object System.Windows.Forms.Button
$buttonMul.Location = New-Object System.Drawing.Size(190,160)
$buttonMul.Size = New-Object System.Drawing.Size(50,50)
$buttonMul.Text = "*"
$form.Controls.Add($buttonMul)

$buttonDiv = New-Object System.Windows.Forms.Button
$buttonDiv.Location = New-Object System.Drawing.Size(190,220)
$buttonDiv.Size = New-Object System.Drawing.Size(50,50)
$buttonDiv.Text = "/"
$form.Controls.Add($buttonDiv)

$buttonEqual = New-Object System.Windows.Forms.Button
$buttonEqual.Location = New-Object System.Drawing.Size(130,220)
$buttonEqual.Size = New-Object System.Drawing.Size(50,50)
$buttonEqual.Text = "="
$form.Controls.Add($buttonEqual)

$buttonClear = New-Object System.Windows.Forms.Button
$buttonClear.Location = New-Object System.Drawing.Size(10,220)
$buttonClear.Size = New-Object System.Drawing.Size(50,50)
$buttonClear.Text = "Clear"
$form.Controls.Add($buttonClear)
#------------------------------------------------------------------

#Event Handlery dla każdego przycisku
$button1.Add_Click({$result.Text += "1"})
$button2.Add_Click({$result.Text += "2"})
$button3.Add_Click({$result.Text += "3"})
$button4.Add_Click({$result.Text += "4"})
$button5.Add_Click({$result.Text +="5"})
$button6.Add_Click({$result.Text += "6"})
$button7.Add_Click({$result.Text += "7"})
$button8.Add_Click({$result.Text += "8"})
$button9.Add_Click({$result.Text += "9"})
$button0.Add_Click({$result.Text += "0"})
$buttonAdd.Add_Click({$result.Text += "+"})
$buttonSub.Add_Click({$result.Text += "-"})
$buttonMul.Add_Click({$result.Text += "*"})
$buttonDiv.Add_Click({$result.Text += "/"})

$buttonClear.Add_Click({$result.Text = ""})

$buttonEqual.Add_Click({$result.Text = [math]::Round( (Invoke-Expression -Command $result.Text),2)})
#-----------------------------------------------------------------------------------------------------

$form.ShowDialog()