use_bpm 55

live_loop :beats do
  with_fx :distortion do
    sample :bd_haus
    sleep 0.5
  end
end

live_loop :choral_drone do
  with_fx :slicer , amp: 2.5 do
    with_fx :bitcrusher   do
      sample :ambi_soft_buzz, rate: 0.8
      sleep 1
    end
  end
end

live_loop :amen_break do
  sample :loop_safari, release: 2, cutoff: 120,beat_stretch: 0.5
  sleep 2
end

live_loop :cs do
  with_fx :distortion do
    with_fx :reverb do
      sample :bd_zome
      sleep 1
    end
  end
end


live_loop :mor do
  #sample :ambi_piano
  sleep 1
end

live_loop :says, sync: :beats do
  use_synth :piano
  with_fx :sound_out_stereo  do
    with_fx :echo, decay: 2, amp: 1  do
      with_fx :slicer, invert_wave: 1, phase: 0.5 do
        with_fx :reverb  do
          play  :c5, attack: 0.001, release: 1.25
          sleep 0.5
          play  :a4, attack: 0.001, release: 1.25
          sleep 0.5
          play  :b4, attack: 0.001, release: 1.25
          sleep 0.5
          play  :g4, attack: 0.001, release: 1.25
          sleep 0.5
        end
      end
    end
  end
end

live_loop :say, sync: :beats do
  use_synth :pluck
  with_fx :sound_out_stereo  do
    # with_fx :krush , gain: 3 ,res: 0.1 do
    with_fx :slicer , amp: 1,  invert_wave: 1, phase: 0.5 do
      with_fx :echo, decay: 2 , phase: 0.5 do
        with_fx :pan, pan: 0 do
          with_fx :reverb , room: 1, damp: 0  do
            play  :a3, attack: 0.001, release: 1.25
            sleep 1
            play  :b3, attack: 0.001, release: 1.25
            sleep 1
            play  :c4, attack: 0.001, release: 1.25
            sleep 1
            play  :d4, attack: 0.001, release: 1.25
            sleep 1
            
            play  :a3, attack: 0.001, release: 1.25
            sleep 1
            play  :b3, attack: 0.001, release: 1.25
            sleep 1
            play  :e4, attack: 0.001, release: 1.25
            sleep 1
            play  :d4, attack: 0.001, release: 1.25
            sleep 1
            
            play  :a3, attack: 0.001, release: 1.25
            sleep 1
            play  :c3, attack: 0.001, release: 1.25
            sleep 0.5
            play  :b3, attack: 0.001, release: 1.25
            sleep 0.5
            play  :a3, attack: 0.001, release: 1.25
            sleep 0.5
            play  :g3, attack: 0.001, release: 1.25
            sleep 0.5
            play  :b3, attack: 0.001, release: 1.25
            sleep 0.5
            play  :a3, attack: 0.001, release: 1.25
            sleep 2.5
            play  :a3, attack: 0.001, release: 1.25
            sleep 2
            # end
          end
        end
      end
    end
  end
end


live_loop :sy, sync: :beats, amp: 4 do
  use_synth :prophet
  with_fx :tanh, krunch: 2 do
    with_fx :echo do
      with_fx :flanger do
        play chord :f4, :major
        sleep 2
        play chord :g4, :major
        sleep 2
        play chord :a4, :minor
        sleep 2
        play chord :a4, :minor
        sleep 2
      end
    end
  end
end

live_loop :bass , sync: :beats do
  use_synth :saw
  with_fx :gverb , amp: 0.6 do
    play :f1,attack_level: 2, release:3, amp: 1.7
    sleep 2
    play :g1,attack_level: 2, release:3, amp: 1.7
    sleep 2
    play :a1,attack_level: 2, release:3, amp: 1.7
    sleep 2
    play :a1,attack_level: 2, release:3, amp: 1.7
    sleep 2
  end
end

live_loop :eff do
  sync :bass
  sleep 4
  with_fx :echo ,phase: 0.25, wave: 1, mix: 1 do
    sample :glitch_perc1,amp: 2
  end
end
