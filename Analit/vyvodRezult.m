function varargout = vyvodRezult(varargin)
% VYVODREZULT M-file for vyvodRezult.fig
%      VYVODREZULT, by itself, creates a new VYVODREZULT or raises the existing
%      singleton*.
%
%      H = VYVODREZULT returns the handle to a new VYVODREZULT or the handle to
%      the existing singleton*.
%
%      VYVODREZULT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VYVODREZULT.M with the given input arguments.
%
%      VYVODREZULT('Property','Value',...) creates a new VYVODREZULT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before vyvodRezult_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to vyvodRezult_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help vyvodRezult

% Last Modified by GUIDE v2.5 23-Apr-2020 18:57:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @vyvodRezult_OpeningFcn, ...
                   'gui_OutputFcn',  @vyvodRezult_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before vyvodRezult is made visible.
function vyvodRezult_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to vyvodRezult (see VARARGIN)

% Choose default command line output for vyvodRezult
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes vyvodRezult wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = vyvodRezult_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in metObPo.
function metObPo_Callback(hObject, eventdata, handles)
vyvodObPo;
% hObject    handle to metObPo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metObPo


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in metSlRaRe.
function metSlRaRe_Callback(hObject, eventdata, handles)
% hObject    handle to metSlRaRe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSlRaRe


% --- Executes on button press in metSlRaReF.
function metSlRaReF_Callback(hObject, eventdata, handles)
% hObject    handle to metSlRaReF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSlRaReF


% --- Executes on button press in radiobutton13.
function radiobutton13_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton13


% --- Executes on button press in metSiRaReF.
function metSiRaReF_Callback(hObject, eventdata, handles)
% hObject    handle to metSiRaReF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSiRaReF


% --- Executes on button press in metUKUs.
function metUKUs_Callback(hObject, eventdata, handles)
% hObject    handle to metUKUs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metUKUs


% --- Executes on button press in metUKUsF.
function metUKUsF_Callback(hObject, eventdata, handles)
% hObject    handle to metUKUsF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metUKUsF


% --- Executes on button press in metNEWs.
function metNEWs_Callback(hObject, eventdata, handles)
vyvodNEWs;
% hObject    handle to metNEWs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metNEWs


% --- Executes on button press in metNEWsF.
function metNEWsF_Callback(hObject, eventdata, handles)
% hObject    handle to metNEWsF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metNEWsF


% --- Executes on button press in metPerets.
function metPerets_Callback(hObject, eventdata, handles)
vyvodPerets;
% hObject    handle to metPerets (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metPerets


% --- Executes on button press in metPeretsF.
function metPeretsF_Callback(hObject, eventdata, handles)
% hObject    handle to metPeretsF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metPeretsF


% --- Executes on button press in radiobutton17.
function radiobutton17_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton17


% --- Executes on button press in checkbox7.
function checkbox7_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox7


% --- Executes on button press in metUKUt.
function metUKUt_Callback(hObject, eventdata, handles)
% hObject    handle to metUKUt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metUKUt


% --- Executes on button press in metUKUtF.
function metUKUtF_Callback(hObject, eventdata, handles)
% hObject    handle to metUKUtF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metUKUtF


% --- Executes on button press in metNEWt.
function metNEWt_Callback(hObject, eventdata, handles)
% hObject    handle to metNEWt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metNEWt


% --- Executes on button press in metNEWtF.
function metNEWtF_Callback(hObject, eventdata, handles)
% hObject    handle to metNEWtF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metNEWtF


% --- Executes on button press in metParett.
function metParett_Callback(hObject, eventdata, handles)
% hObject    handle to metParett (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metParett


% --- Executes on button press in metParettF.
function metParettF_Callback(hObject, eventdata, handles)
% hObject    handle to metParettF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metParettF


% --- Executes on button press in metWepli.
function metWepli_Callback(hObject, eventdata, handles)
% hObject    handle to metWepli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metWepli


% --- Executes on button press in metWepliF.
function metWepliF_Callback(hObject, eventdata, handles)
% hObject    handle to metWepliF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metWepliF


% --- Executes on button press in metOmega.
function metOmega_Callback(hObject, eventdata, handles)
% hObject    handle to metOmega (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metOmega


% --- Executes on button press in metOmegaF.
function metOmegaF_Callback(hObject, eventdata, handles)
% hObject    handle to metOmegaF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metOmegaF


% --- Executes on button press in metSTEK1.
function metSTEK1_Callback(hObject, eventdata, handles)
vyvodSTEK1;
% hObject    handle to metSTEK1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSTEK1


% --- Executes on button press in metSTEK1F.
function metSTEK1F_Callback(hObject, eventdata, handles)
% hObject    handle to metSTEK1F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSTEK1F


% --- Executes on button press in metSTEK2.
function metSTEK2_Callback(hObject, eventdata, handles)
% hObject    handle to metSTEK2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSTEK2


% --- Executes on button press in metSTEK2F.
function metSTEK2F_Callback(hObject, eventdata, handles)
% hObject    handle to metSTEK2F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSTEK2F


% --- Executes on button press in metSTEK3.
function metSTEK3_Callback(hObject, eventdata, handles)
% hObject    handle to metSTEK3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSTEK3


% --- Executes on button press in metSTEK3F.
function metSTEK3F_Callback(hObject, eventdata, handles)
% hObject    handle to metSTEK3F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSTEK3F


% --- Executes on button press in metSTEK4.
function metSTEK4_Callback(hObject, eventdata, handles)
% hObject    handle to metSTEK4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSTEK4


% --- Executes on button press in metSTEK4F.
function metSTEK4F_Callback(hObject, eventdata, handles)
% hObject    handle to metSTEK4F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSTEK4F


% --- Executes on button press in metSTEK5.
function metSTEK5_Callback(hObject, eventdata, handles)
% hObject    handle to metSTEK5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSTEK5


% --- Executes on button press in metSTEK5F.
function metSTEK5F_Callback(hObject, eventdata, handles)
% hObject    handle to metSTEK5F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSTEK5F


% --- Executes on button press in metSTEK6.
function metSTEK6_Callback(hObject, eventdata, handles)
% hObject    handle to metSTEK6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSTEK6


% --- Executes on button press in metSTEK6F.
function metSTEK6F_Callback(hObject, eventdata, handles)
% hObject    handle to metSTEK6F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSTEK6F


% --- Executes on button press in metSTEK7.
function metSTEK7_Callback(hObject, eventdata, handles)
% hObject    handle to metSTEK7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSTEK7


% --- Executes on button press in metSTEK7F.
function metSTEK7F_Callback(hObject, eventdata, handles)
% hObject    handle to metSTEK7F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSTEK7F


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in metSiRaRe.
function metSiRaRe_Callback(hObject, eventdata, handles)
% hObject    handle to metSiRaRe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metSiRaRe


% --- Executes on button press in metObPoF.
function metObPoF_Callback(hObject, eventdata, handles)
% hObject    handle to metObPoF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metObPoF


% --- Executes during object creation, after setting all properties.
function PoleVyvoda_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PoleVyvoda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    %set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function PoleVyvoda_Callback(hObject, eventdata, handles)
% hObject    handle to PoleVyvoda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PoleVyvoda as text
%        str2double(get(hObject,'String')) returns contents of PoleVyvoda as a double


% --------------------------------------------------------------------
function exportm_Callback(hObject, eventdata, handles)
% hObject    handle to exportm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function expexel_Callback(hObject, eventdata, handles)
% hObject    handle to expexel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function expword_Callback(hObject, eventdata, handles)
% hObject    handle to expword (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes on key press with focus on metObPo and none of its controls.
function metObPo_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to metObPo (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
