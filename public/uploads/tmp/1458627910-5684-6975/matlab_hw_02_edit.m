% Homework #2
% Title: DT complex exponential signals 
%
% Signals and Systems
% Spring semester 2016
%
% Authors: Hyeong Geol Shin and Jongho Lee
% Laboratory for Imaging Science and Technology
% Electrical Engineering
% Seoul National University
% Copyright @ Hyeong Geol Shin and Jongho Lee

clear all; close all; clc;
%% Frequency in discrete time signal

n = -25:25;

% cosine functions in discrete time domain
% Question 1: plot for k/16 frequency when k is integer and explain the
% result
for m = %%% fill in this part %%%
    f0 = %%% fill in this part %%%%
    pause(1) % pause function 
    fn = cos(2*pi*f0*n);
    figure(1)
    plot(n,fn,'.')
    axis([-25 25 -2,2])
end



%% Harmonics 

% In this example you will examine a real piano sound
[audio_data Fs] = audioread('piano_sound.wav'); % This function read audio data 
                                               % Fs: sampling rate (# of samples/ 1sec) 

% play the sound
audio_out = audioplayer(audio_data, Fs, 16);
play(audio_out)
       

t = [1:size(audio_data,1)]/Fs; % scaling for real time (we will learn this later)
figure(1)
plot(t,audio_data,'b')  % plot the piano sound
xlabel('time (sec)') 

figure(10)
plot(t(8000:25000),audio_data(8000:25000),'r')  % plot the piano sound in small interval 0.2-0.55 s
xlabel('truncated time (sec)')                  % You can observe the decay of a piano sinewave.

% Display frequency spectrum of the sound (Don't worry if you don't
% understand this part)
ft = abs(fftshift(fft(audio_data))); % Fourier transform of the piano sound
freq = -Fs/2:Fs/length(audio_data):(Fs/2-Fs/length(audio_data)); % frequency domain scailing

figure(2)
plot(freq,ft) % plot the fourier transfrom via frequency domain
grid on
title('Frequency spectrum')
xlabel('Frequency (Hz)')


% --------------------- Question 2 --------------------------------------
% What are the fundamental frequency in Hertz?
% Search google to find the note frequency of the sound
% Write the answer in your HW paper.
%-------------------------------------------------------------------------

