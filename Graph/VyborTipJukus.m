function varargout = VyborTipJukus(varargin)

% VYBORTIPJUKUS M-file for VyborTipJukus.fig
%      VYBORTIPJUKUS, by itself, creates a new VYBORTIPJUKUS or raises the existing
%      singleton*.
%
%      H = VYBORTIPJUKUS returns the handle to a new VYBORTIPJUKUS or the handle to
%      the existing singleton*.
%
%      VYBORTIPJUKUS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VYBORTIPJUKUS.M with the given input arguments.
%
%      VYBORTIPJUKUS('Property','Value',...) creates a new VYBORTIPJUKUS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VyborTipJukus_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VyborTipJukus_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VyborTipJukus

% Last Modified by GUIDE v2.5 20-May-2010 19:22:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VyborTipJukus_OpeningFcn, ...
                   'gui_OutputFcn',  @VyborTipJukus_OutputFcn, ...
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


% --- Executes just before VyborTipJukus is made visible.
function VyborTipJukus_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VyborTipJukus (see VARARGIN)

% Choose default command line output for VyborTipJukus
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VyborTipJukus wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = VyborTipJukus_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in ukussimetr.
function ukussimetr_Callback(hObject, eventdata, handles)
% hObject    handle to ukussimetr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
set(findobj(graphics, 'Tag', 'otslegivanie'),'enable','on'); 
load data_uku; 
plot(Data0.J(:,1),Data0.J(:,2),'c*'); 
hold on;
numGrUKUs=1;
save data_GrUKUs numGrUKUs;
% Hint: get(hObject,'Value') returns toggle state of ukussimetr

% --- Executes on button press in ukusJ1.
function ukusJ1_Callback(hObject, eventdata, handles)
% hObject    handle to ukusJ1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close; 
set(findobj(graphics, 'Tag', 'otslegivanie'),'enable','on'); 
load data_uku; 
plot(Data1.J(:,1),Data1.J(:,2),'c.'); 
hold on;
numGrUKUs=2;
save data_GrUKUs numGrUKUs;
% Hint: get(hObject,'Value') returns toggle state of ukusJ1

% --- Executes on button press in stsirare.
function stsirare_Callback(hObject, eventdata, handles)
% hObject    handle to stsirare (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ukusJ2.
function ukusJ2_Callback(hObject, eventdata, handles)
% hObject    handle to ukusJ2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close; 
set(findobj(graphics, 'Tag', 'otslegivanie'),'enable','on'); 
load data_uku; 
plot(Data2.J(:,1),Data2.J(:,2),'co'); 
hold on;
numGrUKUs=3;
save data_GrUKUs numGrUKUs;
% Hint: get(hObject,'Value') returns toggle state of ukusJ2


