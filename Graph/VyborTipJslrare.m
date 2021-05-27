function varargout = VyborTipJslrare(varargin)

% VYBORTIPJSLRARE M-file for VyborTipJslrare.fig
%      VYBORTIPJSLRARE, by itself, creates a new VYBORTIPJSLRARE or raises the existing
%      singleton*.
%
%      H = VYBORTIPJSLRARE returns the handle to a new VYBORTIPJSLRARE or the handle to
%      the existing singleton*.
%
%      VYBORTIPJSLRARE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VYBORTIPJSLRARE.M with the given input arguments.
%
%      VYBORTIPJSLRARE('Property','Value',...) creates a new VYBORTIPJSLRARE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VyborTipJslrare_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VyborTipJslrare_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VyborTipJslrare

% Last Modified by GUIDE v2.5 20-May-2010 19:55:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VyborTipJslrare_OpeningFcn, ...
                   'gui_OutputFcn',  @VyborTipJslrare_OutputFcn, ...
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


% --- Executes just before VyborTipJslrare is made visible.
function VyborTipJslrare_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VyborTipJslrare (see VARARGIN)

% Choose default command line output for VyborTipJslrare
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VyborTipJslrare wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = VyborTipJslrare_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in slraresimetr.
function slraresimetr_Callback(hObject, eventdata, handles)
% hObject    handle to slraresimetr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close; 
set(findobj(graphics, 'Tag', 'otslegivanie'),'enable','on'); 
load data_uku_A; 
plot(Data0.J(:,1),Data0.J(:,2),'c*'); 
hold on;
numGrSlRaRe=1;
save data_GrSlRaRe numGrSlRaRe;
% Hint: get(hObject,'Value') returns toggle state of slraresimetr

% --- Executes on button press in slrareJ1.
function slrareJ1_Callback(hObject, eventdata, handles)
% hObject    handle to slrareJ1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close; 
set(findobj(graphics, 'Tag', 'otslegivanie'),'enable','on'); 
load data_uku_A; 
plot(Data1.J(:,1),Data1.J(:,2),'c.'); 
hold on;
numGrSlRaRe=2;
save data_GrSlRaRe numGrSlRaRe;
% Hint: get(hObject,'Value') returns toggle state of slrareJ1

% --- Executes on button press in stsirare.
function stsirare_Callback(hObject, eventdata, handles)
% hObject    handle to stsirare (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in slrareJ2.
function slrareJ2_Callback(hObject, eventdata, handles)
% hObject    handle to slrareJ2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
set(findobj(graphics, 'Tag', 'otslegivanie'),'enable','on'); 
load data_uku_A; 
plot(Data2.J(:,1),Data2.J(:,2),'co'); 
hold on;
numGrSlRaRe=3;
save data_GrSlRaRe numGrSlRaRe;
% Hint: get(hObject,'Value') returns toggle state of slrareJ2


