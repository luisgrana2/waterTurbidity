function [mylampr, mylampg, lg] = ui_turbidity()
    fig = uifigure('Name','Turbidity Level');
    fig.Position = ([75 600 300 200]);

    lg = uigauge(fig,'linear','ScaleColors',{'yellow','red'},...
                 'ScaleColorLimits', [60 80; 80 100]);
    lg.Position = ([50 80 200 50]);
    lbl_lg = uilabel(fig);
    lbl_lg.Text = "Water Turbidity (%):";
    lbl_lg.FontWeight = "Bold";
    lbl_lg.FontSize = 14;
    lbl_lg.Position = [90 115 250 50];

    mylampr = uilamp(fig);
    mylampr.Color = 'red';
    mylampr.Position = [270 16 20 20];
    mylampr.Visible = false;

    mylampg = uilamp(fig);
    mylampg.Color = 'green';
    mylampg.Position = [270 16 20 20];

    lbl_mylamp = uilabel(fig);
    lbl_mylamp.Text = "Executing:";
    lbl_mylamp.Position = [210 0 250 50];

    im = uiimage(fig);
    im.ImageSource = "etseib.png";
    im.Position = [0 5 50 50];

    lbl = uilabel(fig);
    lbl.Text = "GRANADOS SEGURA, Luis";
    lbl.Position = [10 160 250 50];
end