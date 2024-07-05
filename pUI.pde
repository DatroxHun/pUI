ElementGroup group;

void setup()
{
    size(1600, 900, P2D);
    frameRate(75);

    group = new ElementGroup();
    group.setPosition(0, 0); // translation of the whole group

    group.add(new CheckBox(new PVector(15, 15), 75f, 10f, true, new Consumer<CheckBox>()
    {
        public void accept(CheckBox element)
        {
            println(element.isChecked());
        }
    }).setAnchor(TL));

    group.add(new HorizontalSlider(new PVector(15, height - 15), width - 70, 25f, 5f, .5f, .025f, new Consumer<HorizontalSlider>()
    {
        public void accept(HorizontalSlider element)
        {
            println(element.getValue());
        }
    }).setThumbColor(color(255, 128, 16)).setASyncCallback(true).setAnchor(BL));

    group.add(new VerticalSlider(new PVector(width - 15, 15), 25f, height - 30f, 5f, .5f, .1f, new Consumer<VerticalSlider>()
    {
        public void accept(VerticalSlider element)
        {
            println(element.getValue());
        }
    }).setThumbColor(color(16, 255, 128)).setASyncCallback(false).setAnchor(TR));

    group.add(new Button(new PVector(width / 2f, height / 2f), 200, 75, 25f, "Press me!", color(32, 64, 8), new Consumer<Button>()
    {
        public void accept(Button element)
        {
            println("Button has been pressed.");
        }
    }).setTint(color(224, 192, 248)).setTextSize(35).setAnchor(MC));
}


void draw()
{
    background(0);

    group.refresh();
}