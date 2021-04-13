function testMenu
    f=uifigure;
    m(1)=uimenu(f,'Label','Root');
    m(2)=uimenu(m(1),'Label','Sub1');
    m(3)=uimenu(m(1),'Label','Sub2');
    m(4)=uimenu(m(3),'Label','Sub2a');
    m(5)=uimenu(m(3),'Label','Sub2b');
    dispatcher=matlab.uiautomation.internal.UIDispatcher.forWeb;
    dispatcher.dispatch(m(1),'uipress');
    dispatcher.dispatch(m(3),'uipress');
    dispatcher.dispatch(m(5),'uipress');
end